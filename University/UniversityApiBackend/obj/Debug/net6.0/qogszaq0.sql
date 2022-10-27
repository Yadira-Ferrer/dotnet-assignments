IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Users] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(50) NOT NULL,
    [LastName] nvarchar(100) NOT NULL,
    [Email] nvarchar(max) NOT NULL,
    [Password] nvarchar(max) NOT NULL,
    [CreatedBy] nvarchar(max) NOT NULL,
    [CreatedAt] datetime2 NOT NULL,
    [UpdatedBy] nvarchar(max) NOT NULL,
    [UpdatedAt] datetime2 NULL,
    [DeletedBy] nvarchar(max) NOT NULL,
    [DeletedAt] datetime2 NULL,
    [IsDeleted] bit NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY ([Id])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20221027174558_Create Users tale', N'6.0.10');
GO

COMMIT;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Curso] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(100) NOT NULL,
    [ShortDescription] nvarchar(280) NOT NULL,
    [LargeDescription] nvarchar(500) NOT NULL,
    [TargetPublic] nvarchar(max) NOT NULL,
    [Objectives] nvarchar(max) NOT NULL,
    [Requirements] nvarchar(max) NOT NULL,
    [CourseLevel] int NOT NULL,
    [CreatedBy] nvarchar(max) NOT NULL,
    [CreatedAt] datetime2 NOT NULL,
    [UpdatedBy] nvarchar(max) NOT NULL,
    [UpdatedAt] datetime2 NULL,
    [DeletedBy] nvarchar(max) NOT NULL,
    [DeletedAt] datetime2 NULL,
    [IsDeleted] bit NOT NULL,
    CONSTRAINT [PK_Curso] PRIMARY KEY ([Id])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20221027183211_Create Curso table', N'6.0.10');
GO

COMMIT;
GO

