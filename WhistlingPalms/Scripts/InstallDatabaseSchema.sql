/****** Object:  ForeignKey [FK_tblInventory_tblProducts]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblInventory_tblProducts]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInventory]'))
ALTER TABLE [dbo].[tblInventory] DROP CONSTRAINT [FK_tblInventory_tblProducts]
GO
/****** Object:  ForeignKey [FK_tblInventory_tblWareHouse]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblInventory_tblWareHouse]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInventory]'))
ALTER TABLE [dbo].[tblInventory] DROP CONSTRAINT [FK_tblInventory_tblWareHouse]
GO
/****** Object:  ForeignKey [FK_tblTransaction_tblClient]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransaction_tblClient]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransaction]'))
ALTER TABLE [dbo].[tblTransaction] DROP CONSTRAINT [FK_tblTransaction_tblClient]
GO
/****** Object:  ForeignKey [FK_tblTransaction_tblTransactionType]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransaction_tblTransactionType]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransaction]'))
ALTER TABLE [dbo].[tblTransaction] DROP CONSTRAINT [FK_tblTransaction_tblTransactionType]
GO
/****** Object:  ForeignKey [FK_tblTransactionDetails_tblProducts]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionDetails_tblProducts]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]'))
ALTER TABLE [dbo].[tblTransactionDetails] DROP CONSTRAINT [FK_tblTransactionDetails_tblProducts]
GO
/****** Object:  ForeignKey [FK_tblTransactionDetails_tblTransaction]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionDetails_tblTransaction]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]'))
ALTER TABLE [dbo].[tblTransactionDetails] DROP CONSTRAINT [FK_tblTransactionDetails_tblTransaction]
GO
/****** Object:  ForeignKey [FK_tblTransactionDetails_tblWareHouse]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionDetails_tblWareHouse]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]'))
ALTER TABLE [dbo].[tblTransactionDetails] DROP CONSTRAINT [FK_tblTransactionDetails_tblWareHouse]
GO
/****** Object:  ForeignKey [FK_tblTransactionDetails_tblWareHouse1]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionDetails_tblWareHouse1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]'))
ALTER TABLE [dbo].[tblTransactionDetails] DROP CONSTRAINT [FK_tblTransactionDetails_tblWareHouse1]
GO
/****** Object:  ForeignKey [FK_tblTransactionStockInformation_tblTransactionDetails]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionStockInformation_tblTransactionDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionStockInformation]'))
ALTER TABLE [dbo].[tblTransactionStockInformation] DROP CONSTRAINT [FK_tblTransactionStockInformation_tblTransactionDetails]
GO
/****** Object:  Table [dbo].[tblTransactionStockInformation]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransactionStockInformation]') AND type in (N'U'))
DROP TABLE [dbo].[tblTransactionStockInformation]
GO
/****** Object:  StoredProcedure [dbo].[TransferStock]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransferStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[TransferStock]
GO
/****** Object:  StoredProcedure [dbo].[AddStock]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddStock]
GO
/****** Object:  StoredProcedure [dbo].[RemoveStock]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RemoveStock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[RemoveStock]
GO
/****** Object:  Table [dbo].[tblTransactionDetails]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]') AND type in (N'U'))
DROP TABLE [dbo].[tblTransactionDetails]
GO
/****** Object:  Table [dbo].[tblTransaction]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransaction]') AND type in (N'U'))
DROP TABLE [dbo].[tblTransaction]
GO
/****** Object:  Table [dbo].[tblInventory]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInventory]') AND type in (N'U'))
DROP TABLE [dbo].[tblInventory]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProducts]') AND type in (N'U'))
DROP TABLE [dbo].[tblProducts]
GO
/****** Object:  Table [dbo].[tblClient]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblClient]') AND type in (N'U'))
DROP TABLE [dbo].[tblClient]
GO
/****** Object:  Table [dbo].[tblTransactionType]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransactionType]') AND type in (N'U'))
DROP TABLE [dbo].[tblTransactionType]
GO
/****** Object:  Table [dbo].[tblWareHouse]    Script Date: 06/26/2011 13:20:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblWareHouse]') AND type in (N'U'))
DROP TABLE [dbo].[tblWareHouse]
GO
/****** Object:  Table [dbo].[tblWareHouse]    Script Date: 06/26/2011 13:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblWareHouse]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblWareHouse](
	[WareHouseID] [int] IDENTITY(1,1) NOT NULL,
	[WareHouseName] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TelephoneNo] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tblWareHouse] PRIMARY KEY CLUSTERED 
(
	[WareHouseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tblTransactionType]    Script Date: 06/26/2011 13:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransactionType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTransactionType](
	[TransactionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionType] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ActionType] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[HasClientOrderInformation] [bit] NOT NULL,
 CONSTRAINT [PK_tblTransactionType] PRIMARY KEY CLUSTERED 
(
	[TransactionTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tblClient]    Script Date: 06/26/2011 13:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblClient]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblClient](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ContactNo] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContactPerson] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmailID] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsVendor] [bit] NOT NULL,
	[IsCustomer] [bit] NOT NULL,
 CONSTRAINT [PK_tblClient_1] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 06/26/2011 13:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProducts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProducts](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Manufacturer] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductTag1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductTag2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SalePrice] [decimal](18, 0) NULL,
	[Discontinued] [bit] NOT NULL,
 CONSTRAINT [PK_tblProducts_1] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tblInventory]    Script Date: 06/26/2011 13:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInventory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInventory](
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[WareHouseID] [int] NOT NULL,
	[Cost] [decimal](18, 0) NOT NULL,
	[Quantity] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_tblInventory_1] PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UniqueProductWareHouseCostKey] UNIQUE NONCLUSTERED 
(
	[ProductID] ASC,
	[WareHouseID] ASC,
	[Cost] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tblInventory', N'CONSTRAINT',N'UniqueProductWareHouseCostKey'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Product, WareHouse and Cost combination should be unique.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblInventory', @level2type=N'CONSTRAINT',@level2name=N'UniqueProductWareHouseCostKey'
GO
/****** Object:  Table [dbo].[tblTransaction]    Script Date: 06/26/2011 13:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransaction]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTransaction](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionDetails] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[TransactionTypeID] [int] NOT NULL,
	[Remarks] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OrderNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ClientID] [int] NULL,
 CONSTRAINT [PK_tblTransaction] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tblTransactionDetails]    Script Date: 06/26/2011 13:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTransactionDetails](
	[TransactionDetailID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[FromWareHouseID] [int] NOT NULL,
	[ToWareHouseID] [int] NULL,
	[TransactQuantity] [decimal](18, 0) NOT NULL,
	[TransactCost] [decimal](18, 0) NULL,
	[TotalCost] [decimal](18, 0) NULL,
 CONSTRAINT [PK_tblTransactionDetails] PRIMARY KEY CLUSTERED 
(
	[TransactionDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tblTransactionDetails', N'COLUMN',N'ToWareHouseID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Required for Stock Transfer. NULL for Stock Addition/Deduction.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblTransactionDetails', @level2type=N'COLUMN',@level2name=N'ToWareHouseID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tblTransactionDetails', N'COLUMN',N'TransactCost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Required for Stock Addition/Deduction. NULL for Stock Transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblTransactionDetails', @level2type=N'COLUMN',@level2name=N'TransactCost'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tblTransactionDetails', N'COLUMN',N'TotalCost'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'=TransactCost*TransactQuantity
Required for Stock Addition/Deduction. NULL for Stock Transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tblTransactionDetails', @level2type=N'COLUMN',@level2name=N'TotalCost'
GO
/****** Object:  StoredProcedure [dbo].[RemoveStock]    Script Date: 06/26/2011 13:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RemoveStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[RemoveStock]
(
	@TransactionDetails varchar(1000),
	@TransactionDate datetime,
	@ProductID int,
	@WareHouseID int,
	@Cost decimal(18, 0),
	@OrderID int,
	@OldQuantity decimal(18, 0),
	@TransactQuantity decimal(18, 0),
	@NewQuantity decimal(18, 0),
	@TransactionType varchar(20),
	@Comments text
)
AS
BEGIN

DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int

	BEGIN TRY
		BEGIN TRANSACTION    -- Start the transaction

		INSERT INTO tblInventoryTransaction
		              (TransactionDetails, TransactionDate, ProductID, WareHouseID, Cost, OrderID, OldQuantity, TransactQuantity, NewQuantity, TransactionType, Comments)
		VALUES        (@TransactionDetails,@TransactionDate,@ProductID,@WareHouseID,@Cost,@OrderID,@OldQuantity,@TransactQuantity,@NewQuantity,@TransactionType,@Comments);

		IF(@NewQuantity = 0)
			BEGIN
				DELETE FROM tblInventory
				WHERE        (ProductID = @ProductID) AND (WareHouseID = @WareHouseID) AND (Cost = @Cost)
			END
		ELSE
			BEGIN
				UPDATE       tblInventory
				SET                Quantity = @NewQuantity
				WHERE        (ProductID = @ProductID) AND (WareHouseID = @WareHouseID) AND (Cost = @Cost)
			END

		COMMIT
	END TRY
	BEGIN CATCH
		-- Whoops, there was an error
		IF @@TRANCOUNT > 0
			ROLLBACK

		-- Raise an error with the details of the exception
		SELECT @ErrMsg = ERROR_MESSAGE(),
				@ErrSeverity = ERROR_SEVERITY();
		RAISERROR(@ErrMsg, @ErrSeverity, 1)
	END CATCH
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddStock]    Script Date: 06/26/2011 13:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[AddStock]
(
	@TransactionDetails varchar(1000),
	@TransactionDate datetime,
	@ProductID int,
	@WareHouseID int,
	@Cost decimal(18, 0),
	@OrderID int,
	@OldQuantity decimal(18, 0),
	@TransactQuantity decimal(18, 0),
	@NewQuantity decimal(18, 0),
	@TransactionType varchar(20),
	@Comments text
)
AS
BEGIN

DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int

	BEGIN TRY
		BEGIN TRANSACTION    -- Start the transaction

		INSERT INTO tblInventoryTransaction
		              (TransactionDetails, TransactionDate, ProductID, WareHouseID, Cost, OrderID, OldQuantity, TransactQuantity, NewQuantity, TransactionType, Comments)
		VALUES        (@TransactionDetails,@TransactionDate,@ProductID,@WareHouseID,@Cost,@OrderID,@OldQuantity,@TransactQuantity,@NewQuantity,@TransactionType,@Comments);

		IF(@OldQuantity = 0)
			BEGIN
				INSERT INTO tblInventory
				              (ProductID, WareHouseID, Cost, Quantity)
				VALUES        (@ProductID,@WareHouseID,@Cost,@NewQuantity)
			END
		ELSE
			BEGIN
				UPDATE       tblInventory
				SET                Quantity = @NewQuantity
				WHERE        (ProductID = @ProductID) AND (WareHouseID = @WareHouseID) AND (Cost = @Cost)
			END

		COMMIT
	END TRY
	BEGIN CATCH
		-- Whoops, there was an error
		IF @@TRANCOUNT > 0
			ROLLBACK

		-- Raise an error with the details of the exception
		SELECT @ErrMsg = ERROR_MESSAGE(),
				@ErrSeverity = ERROR_SEVERITY();
		RAISERROR(@ErrMsg, @ErrSeverity, 1)
	END CATCH
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[TransferStock]    Script Date: 06/26/2011 13:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransferStock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[TransferStock]
(
	@TransactionDetails varchar(1000),
	@TransactionDate datetime,
	@ProductID int,
	@FromWareHouseID int,
	@ToWareHouseID int,
	@Cost decimal(18, 0),
	@OrderID int,
	@FromWareHouseOldQuantity decimal(18, 0),
	@TransactQuantity decimal(18, 0),
	@FromWareHouseNewQuantity decimal(18, 0),
	@Comments text
)
AS
BEGIN

DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int;
DECLARE @ToWareHouseOldQuantity decimal(18, 0), @ToWareHouseNewQuantity decimal(18, 0);

	BEGIN TRY
		BEGIN TRANSACTION    -- Start the transaction

		-- Remove Stock From WareHouse1


		INSERT INTO tblInventoryTransaction
		              (TransactionDetails, TransactionDate, ProductID, WareHouseID, Cost, OrderID, OldQuantity, TransactQuantity, NewQuantity, TransactionType, Comments)
		VALUES        (@TransactionDetails,@TransactionDate,@ProductID,@FromWareHouseID,@Cost,@OrderID,@FromWareHouseOldQuantity,@TransactQuantity,@FromWareHouseNewQuantity,''Transfer-Deduction'',@Comments);

		IF(@FromWareHouseNewQuantity = 0)
			BEGIN
				DELETE FROM tblInventory
				WHERE        (ProductID = @ProductID) AND (WareHouseID = @FromWareHouseID) AND (Cost = @Cost)
			END
		ELSE
			BEGIN
				UPDATE       tblInventory
				SET                Quantity = @FromWareHouseNewQuantity
				WHERE        (ProductID = @ProductID) AND (WareHouseID = @FromWareHouseID) AND (Cost = @Cost)
			END



		-- Add Stock To WareHouse2
		SET @ToWareHouseOldQuantity = (SELECT        Quantity
		                               FROM            tblInventory
		                               WHERE        (ProductID = @ProductID) AND (WareHouseID = @ToWareHouseID) AND (Cost = @Cost));
		SET @ToWareHouseOldQuantity = ISNULL(@ToWareHouseOldQuantity, 0);
		SET @ToWareHouseNewQuantity = @ToWareHouseOldQuantity + @TransactQuantity;

		INSERT INTO tblInventoryTransaction
		              (TransactionDetails, TransactionDate, ProductID, WareHouseID, Cost, OrderID, OldQuantity, TransactQuantity, NewQuantity, TransactionType, Comments)
		VALUES        (@TransactionDetails,@TransactionDate,@ProductID,@ToWareHouseID,@Cost,@OrderID,@ToWareHouseOldQuantity,@TransactQuantity,@ToWareHouseNewQuantity,''Transfer-Addition'',@Comments);

		IF(@ToWareHouseOldQuantity = 0)
			BEGIN
				INSERT INTO tblInventory
				              (ProductID, WareHouseID, Cost, Quantity)
				VALUES        (@ProductID,@ToWareHouseID,@Cost,@ToWareHouseNewQuantity)
			END
		ELSE
			BEGIN
				UPDATE       tblInventory
				SET                Quantity = @ToWareHouseNewQuantity
				WHERE        (ProductID = @ProductID) AND (WareHouseID = @ToWareHouseID) AND (Cost = @Cost)
			END

		COMMIT
	END TRY
	BEGIN CATCH
		-- Whoops, there was an error
		IF @@TRANCOUNT > 0
			ROLLBACK

		-- Raise an error with the details of the exception
		SELECT @ErrMsg = ERROR_MESSAGE(),
				@ErrSeverity = ERROR_SEVERITY();
		RAISERROR(@ErrMsg, @ErrSeverity, 1)
	END CATCH
END' 
END
GO
/****** Object:  Table [dbo].[tblTransactionStockInformation]    Script Date: 06/26/2011 13:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransactionStockInformation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTransactionStockInformation](
	[TransactionStockInformationID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionDetailID] [int] NOT NULL,
	[Cost] [decimal](18, 0) NOT NULL,
	[OldQuantity] [decimal](18, 0) NOT NULL,
	[NewQuantity] [decimal](18, 0) NOT NULL,
	[IsFromWareHouse] [bit] NOT NULL,
 CONSTRAINT [PK_tblTransactionStockInformation] PRIMARY KEY CLUSTERED 
(
	[TransactionStockInformationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  ForeignKey [FK_tblInventory_tblProducts]    Script Date: 06/26/2011 13:20:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblInventory_tblProducts]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInventory]'))
ALTER TABLE [dbo].[tblInventory]  WITH CHECK ADD  CONSTRAINT [FK_tblInventory_tblProducts] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProducts] ([ProductID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblInventory_tblProducts]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInventory]'))
ALTER TABLE [dbo].[tblInventory] CHECK CONSTRAINT [FK_tblInventory_tblProducts]
GO
/****** Object:  ForeignKey [FK_tblInventory_tblWareHouse]    Script Date: 06/26/2011 13:20:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblInventory_tblWareHouse]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInventory]'))
ALTER TABLE [dbo].[tblInventory]  WITH CHECK ADD  CONSTRAINT [FK_tblInventory_tblWareHouse] FOREIGN KEY([WareHouseID])
REFERENCES [dbo].[tblWareHouse] ([WareHouseID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblInventory_tblWareHouse]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInventory]'))
ALTER TABLE [dbo].[tblInventory] CHECK CONSTRAINT [FK_tblInventory_tblWareHouse]
GO
/****** Object:  ForeignKey [FK_tblTransaction_tblClient]    Script Date: 06/26/2011 13:20:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransaction_tblClient]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransaction]'))
ALTER TABLE [dbo].[tblTransaction]  WITH CHECK ADD  CONSTRAINT [FK_tblTransaction_tblClient] FOREIGN KEY([ClientID])
REFERENCES [dbo].[tblClient] ([ClientID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransaction_tblClient]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransaction]'))
ALTER TABLE [dbo].[tblTransaction] CHECK CONSTRAINT [FK_tblTransaction_tblClient]
GO
/****** Object:  ForeignKey [FK_tblTransaction_tblTransactionType]    Script Date: 06/26/2011 13:20:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransaction_tblTransactionType]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransaction]'))
ALTER TABLE [dbo].[tblTransaction]  WITH CHECK ADD  CONSTRAINT [FK_tblTransaction_tblTransactionType] FOREIGN KEY([TransactionTypeID])
REFERENCES [dbo].[tblTransactionType] ([TransactionTypeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransaction_tblTransactionType]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransaction]'))
ALTER TABLE [dbo].[tblTransaction] CHECK CONSTRAINT [FK_tblTransaction_tblTransactionType]
GO
/****** Object:  ForeignKey [FK_tblTransactionDetails_tblProducts]    Script Date: 06/26/2011 13:20:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionDetails_tblProducts]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]'))
ALTER TABLE [dbo].[tblTransactionDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblTransactionDetails_tblProducts] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProducts] ([ProductID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionDetails_tblProducts]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]'))
ALTER TABLE [dbo].[tblTransactionDetails] CHECK CONSTRAINT [FK_tblTransactionDetails_tblProducts]
GO
/****** Object:  ForeignKey [FK_tblTransactionDetails_tblTransaction]    Script Date: 06/26/2011 13:20:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionDetails_tblTransaction]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]'))
ALTER TABLE [dbo].[tblTransactionDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblTransactionDetails_tblTransaction] FOREIGN KEY([TransactionID])
REFERENCES [dbo].[tblTransaction] ([TransactionID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionDetails_tblTransaction]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]'))
ALTER TABLE [dbo].[tblTransactionDetails] CHECK CONSTRAINT [FK_tblTransactionDetails_tblTransaction]
GO
/****** Object:  ForeignKey [FK_tblTransactionDetails_tblWareHouse]    Script Date: 06/26/2011 13:20:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionDetails_tblWareHouse]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]'))
ALTER TABLE [dbo].[tblTransactionDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblTransactionDetails_tblWareHouse] FOREIGN KEY([FromWareHouseID])
REFERENCES [dbo].[tblWareHouse] ([WareHouseID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionDetails_tblWareHouse]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]'))
ALTER TABLE [dbo].[tblTransactionDetails] CHECK CONSTRAINT [FK_tblTransactionDetails_tblWareHouse]
GO
/****** Object:  ForeignKey [FK_tblTransactionDetails_tblWareHouse1]    Script Date: 06/26/2011 13:20:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionDetails_tblWareHouse1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]'))
ALTER TABLE [dbo].[tblTransactionDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblTransactionDetails_tblWareHouse1] FOREIGN KEY([ToWareHouseID])
REFERENCES [dbo].[tblWareHouse] ([WareHouseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionDetails_tblWareHouse1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionDetails]'))
ALTER TABLE [dbo].[tblTransactionDetails] CHECK CONSTRAINT [FK_tblTransactionDetails_tblWareHouse1]
GO
/****** Object:  ForeignKey [FK_tblTransactionStockInformation_tblTransactionDetails]    Script Date: 06/26/2011 13:20:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionStockInformation_tblTransactionDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionStockInformation]'))
ALTER TABLE [dbo].[tblTransactionStockInformation]  WITH CHECK ADD  CONSTRAINT [FK_tblTransactionStockInformation_tblTransactionDetails] FOREIGN KEY([TransactionDetailID])
REFERENCES [dbo].[tblTransactionDetails] ([TransactionDetailID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblTransactionStockInformation_tblTransactionDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTransactionStockInformation]'))
ALTER TABLE [dbo].[tblTransactionStockInformation] CHECK CONSTRAINT [FK_tblTransactionStockInformation_tblTransactionDetails]
GO
