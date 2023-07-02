component {

    function run( qb, mockdata ) {

        //test account password = masterchef
        var passworHash = "$2a$12$hy2lpZqVp.gvng5Fq0u4DOuPQq/VLCfdHjyOzhSWhJPwz7hSCGpRy";
        qb.newQuery().from("recipe").delete();
        qb.newQuery().from("user").delete();

        qb.newQuery().table( "user" ).insert([
            {
                "first_name": "Giada",
                "last_name": "De Laurentiis",
                "username": "giada",
                "password": passworHash
            },
            {
                "first_name": "Gordon",
                "last_name": "Ramsay",
                "username": "gordon",
                "password": passworHash
            }
        ]);

        var giadaQuery = qb.newQuery().select(["user_id"]).from("user").where("username","=","giada").get();
        var gordonQuery = qb.newQuery().select(["user_id"]).from("user").where("username","=","gordon").get();

        qb.newQuery().table( "recipe" ).insert(
            //https://github.com/coldbox-modules/MockDataCFC#available-mocking-types
            mockdata.mock(
                $num = 20,
                title = "words:2",
                description = "words:3",
                ingredients = "baconlorem:1",
                directions = "lorem:2",
                user_id = "oneOf:#giadaQuery[1].user_id#:#gordonQuery[1].user_id#"
            )
        );
    }

}