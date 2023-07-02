CREATE TABLE [dbo].[recipe] (
    [recipe_id]   INT           IDENTITY (1, 1) NOT NULL,
    [title]       VARCHAR (50)  NOT NULL,
    [description] VARCHAR (100) NOT NULL,
    [ingredients] VARCHAR (MAX) NOT NULL,
    [directions]  VARCHAR (MAX) NOT NULL,
    [user_id]     INT           NOT NULL,
    CONSTRAINT [pk_recipe_recipe_id] PRIMARY KEY CLUSTERED ([recipe_id] ASC),
    CONSTRAINT [fk_recipe_user_id] FOREIGN KEY ([user_id]) REFERENCES [dbo].[user] ([user_id])
);


GO

