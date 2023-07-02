CREATE TABLE [dbo].[user] (
    [user_id]                 INT           IDENTITY (1, 1) NOT NULL,
    [first_name]              VARCHAR (50)  NOT NULL,
    [last_name]               VARCHAR (50)  NOT NULL,
    [username]                VARCHAR (50)  NOT NULL,
    [password]                VARCHAR (150) NOT NULL,
    [two_factor_auth_enabled] BIT           NULL,
    [two_factor_auth_key]     VARCHAR (50)  NULL,
    CONSTRAINT [pk_user_user_id] PRIMARY KEY CLUSTERED ([user_id] ASC)
);


GO

