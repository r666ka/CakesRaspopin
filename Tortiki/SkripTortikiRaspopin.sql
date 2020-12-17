
CREATE TABLE [dbo].[Ingrediyent] (
    [�������] nvarchar(100)  NOT NULL,
    [������������] nvarchar(100)  NOT NULL,
    [�������_���������] nvarchar(100)  NOT NULL,
    [����������] int  NOT NULL,
    [���] nvarchar(100)  NOT NULL,
    [����] decimal(19,4)  NOT NULL,
    [����] nvarchar(100)  NULL,
    [�������] nvarchar(100)  NULL,
    [��������������] nvarchar(100)  NULL,
    [���������] nvarchar(100)  NULL,
    [�����������] nvarchar(100)  NULL,
    [����] datetime  NULL
);
GO


CREATE TABLE [dbo].[Izdeliye] (
    [������������] nvarchar(100)  NOT NULL,
    [������] nvarchar(100)  NOT NULL
);
GO


CREATE TABLE [dbo].[Oborudovaniye] (
    [����������] nvarchar(100)  NOT NULL,
    [���_������������] nvarchar(100)  NOT NULL,
    [��������������] nvarchar(100)  NULL
);
GO


CREATE TABLE [dbo].[Polzovateli] (
    [Login] nvarchar(100)  NOT NULL,
    [Password] nvarchar(100)  NOT NULL,
    [Role] nvarchar(100)  NOT NULL,
    [�������] nvarchar(100)  NULL,
    [���_��������] nvarchar(100)  NULL,
    [����] nvarchar(100)  NULL
);
GO


CREATE TABLE [dbo].[Postavishchik] (
    [��������_����������] nvarchar(100)  NOT NULL,
    [�����] nvarchar(100)  NULL,
    [����_��������] datetime  NOT NULL
);
GO


CREATE TABLE [dbo].[Spetsifikatsiya_ingrediyenty] (
    [�������] nvarchar(100)  NOT NULL,
    [����������] nvarchar(100)  NOT NULL,
    [���_��] int  NOT NULL
);
GO


CREATE TABLE [dbo].[Spetsifikatsiya_operatsii] (
    [�������] nvarchar(100)  NOT NULL,
    [��������] nvarchar(100)  NOT NULL,
    [����������_�����] int  NOT NULL,
    [���_������������] nvarchar(100)  NULL,
    [�����_��_��������] time  NOT NULL
);
GO


CREATE TABLE [dbo].[Spetsifikatsiya_polufabrikaty] (
    [�������] nvarchar(100)  NOT NULL,
    [������������] nvarchar(100)  NOT NULL,
    [���_��] int  NOT NULL
);
GO


CREATE TABLE [dbo].[Spetsifikatsiya_ukrasheniya_dlya_torta] (
    [�������] nvarchar(100)  NOT NULL,
    [���������_���_�����] nvarchar(100)  NOT NULL,
    [���_��] int  NOT NULL
);
GO


CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO


CREATE TABLE [dbo].[Tip_Oborudovaniye] (
    [���_������������] nvarchar(100)  NOT NULL
);
GO


CREATE TABLE [dbo].[Ukrasheniye_dlya_torta] (
    [�������] nvarchar(100)  NOT NULL,
    [������������] nvarchar(100)  NOT NULL,
    [�������_���������] nvarchar(100)  NOT NULL,
    [����������] int  NOT NULL,
    [���] nvarchar(100)  NOT NULL,
    [�����_����] decimal(19,4)  NOT NULL,
    [���] float  NOT NULL,
    [���������] nvarchar(100)  NULL,
    [�����������] nvarchar(100)  NULL
);
GO


CREATE TABLE [dbo].[Zakaz] (
    [�����] int  NOT NULL,
    [����] datetime  NOT NULL,
    [������������_������] nvarchar(100)  NOT NULL,
    [�������] nvarchar(100)  NOT NULL,
    [��������] nvarchar(100)  NOT NULL,
    [�������������_��������] nvarchar(100)  NULL,
    [���������] decimal(19,4)  NULL,
    [��������_����_����������] datetime  NULL,
    [�������_�����] nvarchar(100)  NULL
);
GO


CREATE TABLE [dbo].[Instrumenty] (
    [������������] nvarchar(max)  NULL,
    [��������] nvarchar(max)  NULL,
    [���_�����������] nvarchar(max)  NULL,
    [�������__�_�������_] nvarchar(max)  NULL,
    [����������] nvarchar(max)  NULL,
    [�������_������] nvarchar(max)  NULL,
    [ID] int  NOT NULL
);
GO


ALTER TABLE [dbo].[Ingrediyent]
ADD CONSTRAINT [PK_Ingrediyent]
    PRIMARY KEY CLUSTERED ([�������] ASC);
GO


ALTER TABLE [dbo].[Izdeliye]
ADD CONSTRAINT [PK_Izdeliye]
    PRIMARY KEY CLUSTERED ([������������] ASC);
GO


ALTER TABLE [dbo].[Oborudovaniye]
ADD CONSTRAINT [PK_Oborudovaniye]
    PRIMARY KEY CLUSTERED ([����������] ASC);
GO


ALTER TABLE [dbo].[Polzovateli]
ADD CONSTRAINT [PK_Polzovateli]
    PRIMARY KEY CLUSTERED ([Login], [Password] ASC);
GO


ALTER TABLE [dbo].[Postavishchik]
ADD CONSTRAINT [PK_Postavishchik]
    PRIMARY KEY CLUSTERED ([��������_����������] ASC);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_ingrediyenty]
ADD CONSTRAINT [PK_Spetsifikatsiya_ingrediyenty]
    PRIMARY KEY CLUSTERED ([�������], [����������] ASC);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_operatsii]
ADD CONSTRAINT [PK_Spetsifikatsiya_operatsii]
    PRIMARY KEY CLUSTERED ([�������], [��������], [����������_�����] ASC);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_polufabrikaty]
ADD CONSTRAINT [PK_Spetsifikatsiya_polufabrikaty]
    PRIMARY KEY CLUSTERED ([�������], [������������] ASC);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_ukrasheniya_dlya_torta]
ADD CONSTRAINT [PK_Spetsifikatsiya_ukrasheniya_dlya_torta]
    PRIMARY KEY CLUSTERED ([�������], [���������_���_�����] ASC);
GO


ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO


ALTER TABLE [dbo].[Tip_Oborudovaniye]
ADD CONSTRAINT [PK_Tip_Oborudovaniye]
    PRIMARY KEY CLUSTERED ([���_������������] ASC);
GO


ALTER TABLE [dbo].[Ukrasheniye_dlya_torta]
ADD CONSTRAINT [PK_Ukrasheniye_dlya_torta]
    PRIMARY KEY CLUSTERED ([�������] ASC);
GO


ALTER TABLE [dbo].[Zakaz]
ADD CONSTRAINT [PK_Zakaz]
    PRIMARY KEY CLUSTERED ([�����], [����] ASC);
GO


ALTER TABLE [dbo].[Instrumenty]
ADD CONSTRAINT [PK_Instrumenty]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO


ALTER TABLE [dbo].[Ingrediyent]
ADD CONSTRAINT [FK_�����������_���������]
    FOREIGN KEY ([���������])
    REFERENCES [dbo].[Postavishchik]
        ([��������_����������])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_�����������_���������]
ON [dbo].[Ingrediyent]
    ([���������]);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_ingrediyenty]
ADD CONSTRAINT [FK_������������_�����������_�����������]
    FOREIGN KEY ([����������])
    REFERENCES [dbo].[Ingrediyent]
        ([�������])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_������������_�����������_�����������]
ON [dbo].[Spetsifikatsiya_ingrediyenty]
    ([����������]);
GO


ALTER TABLE [dbo].[Zakaz]
ADD CONSTRAINT [FK_�����_�������]
    FOREIGN KEY ([�������])
    REFERENCES [dbo].[Izdeliye]
        ([������������])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_�����_�������]
ON [dbo].[Zakaz]
    ([�������]);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_ingrediyenty]
ADD CONSTRAINT [FK_������������_�����������_�������]
    FOREIGN KEY ([�������])
    REFERENCES [dbo].[Izdeliye]
        ([������������])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


ALTER TABLE [dbo].[Spetsifikatsiya_operatsii]
ADD CONSTRAINT [FK_������������_��������_�������]
    FOREIGN KEY ([�������])
    REFERENCES [dbo].[Izdeliye]
        ([������������])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


ALTER TABLE [dbo].[Spetsifikatsiya_polufabrikaty]
ADD CONSTRAINT [FK_������������_������������_�������]
    FOREIGN KEY ([�������])
    REFERENCES [dbo].[Izdeliye]
        ([������������])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


ALTER TABLE [dbo].[Spetsifikatsiya_polufabrikaty]
ADD CONSTRAINT [FK_������������_������������_�������1]
    FOREIGN KEY ([������������])
    REFERENCES [dbo].[Izdeliye]
        ([������������])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_������������_������������_�������1]
ON [dbo].[Spetsifikatsiya_polufabrikaty]
    ([������������]);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_ukrasheniya_dlya_torta]
ADD CONSTRAINT [FK_������������_���������_���_�����_�������]
    FOREIGN KEY ([�������])
    REFERENCES [dbo].[Izdeliye]
        ([������������])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


ALTER TABLE [dbo].[Oborudovaniye]
ADD CONSTRAINT [FK_������������_���_������������]
    FOREIGN KEY ([���_������������])
    REFERENCES [dbo].[Tip_Oborudovaniye]
        ([���_������������])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_������������_���_������������]
ON [dbo].[Oborudovaniye]
    ([���_������������]);
GO


ALTER TABLE [dbo].[Zakaz]
ADD CONSTRAINT [FK_�����_������������]
    FOREIGN KEY ([��������], [�������������_��������])
    REFERENCES [dbo].[Polzovateli]
        ([Login], [Password])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_�����_������������]
ON [dbo].[Zakaz]
    ([��������], [�������������_��������]);
GO


ALTER TABLE [dbo].[Ukrasheniye_dlya_torta]
ADD CONSTRAINT [FK_���������_���_�����_���������]
    FOREIGN KEY ([���������])
    REFERENCES [dbo].[Postavishchik]
        ([��������_����������])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_���������_���_�����_���������]
ON [dbo].[Ukrasheniye_dlya_torta]
    ([���������]);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_operatsii]
ADD CONSTRAINT [FK_������������_��������_���_������������]
    FOREIGN KEY ([���_������������])
    REFERENCES [dbo].[Tip_Oborudovaniye]
        ([���_������������])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_������������_��������_���_������������]
ON [dbo].[Spetsifikatsiya_operatsii]
    ([���_������������]);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_ukrasheniya_dlya_torta]
ADD CONSTRAINT [FK_������������_���������_���_�����_���������_���_�����]
    FOREIGN KEY ([���������_���_�����])
    REFERENCES [dbo].[Ukrasheniye_dlya_torta]
        ([�������])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

CREATE INDEX [IX_FK_������������_���������_���_�����_���������_���_�����]
ON [dbo].[Spetsifikatsiya_ukrasheniya_dlya_torta]
    ([���������_���_�����]);
GO