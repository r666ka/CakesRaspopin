
CREATE TABLE [dbo].[Ingrediyent] (
    [Артикул] nvarchar(100)  NOT NULL,
    [Наименование] nvarchar(100)  NOT NULL,
    [Единицы_измерения] nvarchar(100)  NOT NULL,
    [Количество] int  NOT NULL,
    [Тип] nvarchar(100)  NOT NULL,
    [Цена] decimal(19,4)  NOT NULL,
    [ГОСТ] nvarchar(100)  NULL,
    [Фасовка] nvarchar(100)  NULL,
    [Характеристика] nvarchar(100)  NULL,
    [Поставщик] nvarchar(100)  NULL,
    [Изображение] nvarchar(100)  NULL,
    [Дата] datetime  NULL
);
GO


CREATE TABLE [dbo].[Izdeliye] (
    [Наименование] nvarchar(100)  NOT NULL,
    [Размер] nvarchar(100)  NOT NULL
);
GO


CREATE TABLE [dbo].[Oborudovaniye] (
    [Маркировка] nvarchar(100)  NOT NULL,
    [Тип_оборудования] nvarchar(100)  NOT NULL,
    [Характеристики] nvarchar(100)  NULL
);
GO


CREATE TABLE [dbo].[Polzovateli] (
    [Login] nvarchar(100)  NOT NULL,
    [Password] nvarchar(100)  NOT NULL,
    [Role] nvarchar(100)  NOT NULL,
    [Фамилия] nvarchar(100)  NULL,
    [Имя_Отчество] nvarchar(100)  NULL,
    [Фото] nvarchar(100)  NULL
);
GO


CREATE TABLE [dbo].[Postavishchik] (
    [Название_поставщика] nvarchar(100)  NOT NULL,
    [Адрес] nvarchar(100)  NULL,
    [Срок_доставки] datetime  NOT NULL
);
GO


CREATE TABLE [dbo].[Spetsifikatsiya_ingrediyenty] (
    [Изделие] nvarchar(100)  NOT NULL,
    [Ингредиент] nvarchar(100)  NOT NULL,
    [Кол_во] int  NOT NULL
);
GO


CREATE TABLE [dbo].[Spetsifikatsiya_operatsii] (
    [Изделие] nvarchar(100)  NOT NULL,
    [Операция] nvarchar(100)  NOT NULL,
    [Порядковый_номер] int  NOT NULL,
    [Тип_оборудования] nvarchar(100)  NULL,
    [Время_на_операцию] time  NOT NULL
);
GO


CREATE TABLE [dbo].[Spetsifikatsiya_polufabrikaty] (
    [Изделие] nvarchar(100)  NOT NULL,
    [Полуфабрикат] nvarchar(100)  NOT NULL,
    [Кол_во] int  NOT NULL
);
GO


CREATE TABLE [dbo].[Spetsifikatsiya_ukrasheniya_dlya_torta] (
    [Изделие] nvarchar(100)  NOT NULL,
    [Украшение_для_торта] nvarchar(100)  NOT NULL,
    [Кол_во] int  NOT NULL
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
    [Тип_оборудования] nvarchar(100)  NOT NULL
);
GO


CREATE TABLE [dbo].[Ukrasheniye_dlya_torta] (
    [Артикул] nvarchar(100)  NOT NULL,
    [Наименование] nvarchar(100)  NOT NULL,
    [Единицы_измерения] nvarchar(100)  NOT NULL,
    [Количество] int  NOT NULL,
    [Тип] nvarchar(100)  NOT NULL,
    [Закуп_Цена] decimal(19,4)  NOT NULL,
    [Вес] float  NOT NULL,
    [Поставщик] nvarchar(100)  NULL,
    [Изображение] nvarchar(100)  NULL
);
GO


CREATE TABLE [dbo].[Zakaz] (
    [Номер] int  NOT NULL,
    [Дата] datetime  NOT NULL,
    [Наименование_заказа] nvarchar(100)  NOT NULL,
    [Изделие] nvarchar(100)  NOT NULL,
    [Заказчик] nvarchar(100)  NOT NULL,
    [Ответственный_менеджер] nvarchar(100)  NULL,
    [Стоимость] decimal(19,4)  NULL,
    [Плановая_дата_завершения] datetime  NULL,
    [Примеры_работ] nvarchar(100)  NULL
);
GO


CREATE TABLE [dbo].[Instrumenty] (
    [Наименование] nvarchar(max)  NULL,
    [Описание] nvarchar(max)  NULL,
    [Тип_инструмента] nvarchar(max)  NULL,
    [Возраст__в_месяцах_] nvarchar(max)  NULL,
    [Количество] nvarchar(max)  NULL,
    [Степень_износа] nvarchar(max)  NULL,
    [ID] int  NOT NULL
);
GO


ALTER TABLE [dbo].[Ingrediyent]
ADD CONSTRAINT [PK_Ingrediyent]
    PRIMARY KEY CLUSTERED ([Артикул] ASC);
GO


ALTER TABLE [dbo].[Izdeliye]
ADD CONSTRAINT [PK_Izdeliye]
    PRIMARY KEY CLUSTERED ([Наименование] ASC);
GO


ALTER TABLE [dbo].[Oborudovaniye]
ADD CONSTRAINT [PK_Oborudovaniye]
    PRIMARY KEY CLUSTERED ([Маркировка] ASC);
GO


ALTER TABLE [dbo].[Polzovateli]
ADD CONSTRAINT [PK_Polzovateli]
    PRIMARY KEY CLUSTERED ([Login], [Password] ASC);
GO


ALTER TABLE [dbo].[Postavishchik]
ADD CONSTRAINT [PK_Postavishchik]
    PRIMARY KEY CLUSTERED ([Название_поставщика] ASC);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_ingrediyenty]
ADD CONSTRAINT [PK_Spetsifikatsiya_ingrediyenty]
    PRIMARY KEY CLUSTERED ([Изделие], [Ингредиент] ASC);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_operatsii]
ADD CONSTRAINT [PK_Spetsifikatsiya_operatsii]
    PRIMARY KEY CLUSTERED ([Изделие], [Операция], [Порядковый_номер] ASC);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_polufabrikaty]
ADD CONSTRAINT [PK_Spetsifikatsiya_polufabrikaty]
    PRIMARY KEY CLUSTERED ([Изделие], [Полуфабрикат] ASC);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_ukrasheniya_dlya_torta]
ADD CONSTRAINT [PK_Spetsifikatsiya_ukrasheniya_dlya_torta]
    PRIMARY KEY CLUSTERED ([Изделие], [Украшение_для_торта] ASC);
GO


ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO


ALTER TABLE [dbo].[Tip_Oborudovaniye]
ADD CONSTRAINT [PK_Tip_Oborudovaniye]
    PRIMARY KEY CLUSTERED ([Тип_оборудования] ASC);
GO


ALTER TABLE [dbo].[Ukrasheniye_dlya_torta]
ADD CONSTRAINT [PK_Ukrasheniye_dlya_torta]
    PRIMARY KEY CLUSTERED ([Артикул] ASC);
GO


ALTER TABLE [dbo].[Zakaz]
ADD CONSTRAINT [PK_Zakaz]
    PRIMARY KEY CLUSTERED ([Номер], [Дата] ASC);
GO


ALTER TABLE [dbo].[Instrumenty]
ADD CONSTRAINT [PK_Instrumenty]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO


ALTER TABLE [dbo].[Ingrediyent]
ADD CONSTRAINT [FK_Ингредиенты_Поставщик]
    FOREIGN KEY ([Поставщик])
    REFERENCES [dbo].[Postavishchik]
        ([Название_поставщика])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_Ингредиенты_Поставщик]
ON [dbo].[Ingrediyent]
    ([Поставщик]);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_ingrediyenty]
ADD CONSTRAINT [FK_Спецификация_ингредиенты_Ингредиенты]
    FOREIGN KEY ([Ингредиент])
    REFERENCES [dbo].[Ingrediyent]
        ([Артикул])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_Спецификация_ингредиенты_Ингредиенты]
ON [dbo].[Spetsifikatsiya_ingrediyenty]
    ([Ингредиент]);
GO


ALTER TABLE [dbo].[Zakaz]
ADD CONSTRAINT [FK_Заказ_Изделие]
    FOREIGN KEY ([Изделие])
    REFERENCES [dbo].[Izdeliye]
        ([Наименование])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_Заказ_Изделие]
ON [dbo].[Zakaz]
    ([Изделие]);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_ingrediyenty]
ADD CONSTRAINT [FK_Спецификация_ингредиенты_Изделие]
    FOREIGN KEY ([Изделие])
    REFERENCES [dbo].[Izdeliye]
        ([Наименование])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


ALTER TABLE [dbo].[Spetsifikatsiya_operatsii]
ADD CONSTRAINT [FK_Спецификация_операции_Изделие]
    FOREIGN KEY ([Изделие])
    REFERENCES [dbo].[Izdeliye]
        ([Наименование])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


ALTER TABLE [dbo].[Spetsifikatsiya_polufabrikaty]
ADD CONSTRAINT [FK_Спецификация_полуфабрикат_Изделие]
    FOREIGN KEY ([Изделие])
    REFERENCES [dbo].[Izdeliye]
        ([Наименование])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


ALTER TABLE [dbo].[Spetsifikatsiya_polufabrikaty]
ADD CONSTRAINT [FK_Спецификация_полуфабрикат_Изделие1]
    FOREIGN KEY ([Полуфабрикат])
    REFERENCES [dbo].[Izdeliye]
        ([Наименование])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_Спецификация_полуфабрикат_Изделие1]
ON [dbo].[Spetsifikatsiya_polufabrikaty]
    ([Полуфабрикат]);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_ukrasheniya_dlya_torta]
ADD CONSTRAINT [FK_Спецификация_украшения_для_торта_Изделие]
    FOREIGN KEY ([Изделие])
    REFERENCES [dbo].[Izdeliye]
        ([Наименование])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


ALTER TABLE [dbo].[Oborudovaniye]
ADD CONSTRAINT [FK_Оборудование_Тип_оборудования]
    FOREIGN KEY ([Тип_оборудования])
    REFERENCES [dbo].[Tip_Oborudovaniye]
        ([Тип_оборудования])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_Оборудование_Тип_оборудования]
ON [dbo].[Oborudovaniye]
    ([Тип_оборудования]);
GO


ALTER TABLE [dbo].[Zakaz]
ADD CONSTRAINT [FK_Заказ_Пользователи]
    FOREIGN KEY ([Заказчик], [Ответственный_менеджер])
    REFERENCES [dbo].[Polzovateli]
        ([Login], [Password])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_Заказ_Пользователи]
ON [dbo].[Zakaz]
    ([Заказчик], [Ответственный_менеджер]);
GO


ALTER TABLE [dbo].[Ukrasheniye_dlya_torta]
ADD CONSTRAINT [FK_Украшения_для_торта_Поставщик]
    FOREIGN KEY ([Поставщик])
    REFERENCES [dbo].[Postavishchik]
        ([Название_поставщика])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_Украшения_для_торта_Поставщик]
ON [dbo].[Ukrasheniye_dlya_torta]
    ([Поставщик]);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_operatsii]
ADD CONSTRAINT [FK_Спецификация_операции_Тип_оборудования]
    FOREIGN KEY ([Тип_оборудования])
    REFERENCES [dbo].[Tip_Oborudovaniye]
        ([Тип_оборудования])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


CREATE INDEX [IX_FK_Спецификация_операции_Тип_оборудования]
ON [dbo].[Spetsifikatsiya_operatsii]
    ([Тип_оборудования]);
GO


ALTER TABLE [dbo].[Spetsifikatsiya_ukrasheniya_dlya_torta]
ADD CONSTRAINT [FK_Спецификация_украшения_для_торта_Украшения_для_торта]
    FOREIGN KEY ([Украшение_для_торта])
    REFERENCES [dbo].[Ukrasheniye_dlya_torta]
        ([Артикул])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

CREATE INDEX [IX_FK_Спецификация_украшения_для_торта_Украшения_для_торта]
ON [dbo].[Spetsifikatsiya_ukrasheniya_dlya_torta]
    ([Украшение_для_торта]);
GO