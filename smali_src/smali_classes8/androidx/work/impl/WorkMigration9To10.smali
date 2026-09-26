.class public final Landroidx/work/impl/WorkMigration9To10;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const/16 v0, 0x9

    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/work/impl/WorkMigration9To10;->context:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "db"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->W(Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/work/impl/WorkMigration9To10;->context:Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Landroidx/work/impl/utils/PreferenceUtils;->d(Landroid/content/Context;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/work/impl/WorkMigration9To10;->context:Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Landroidx/work/impl/utils/IdGeneratorKt;->c(Landroid/content/Context;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 21
    return-void
.end method
