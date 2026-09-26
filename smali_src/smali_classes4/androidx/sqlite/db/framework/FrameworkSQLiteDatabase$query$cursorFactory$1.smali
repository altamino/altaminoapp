.class final Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$query$cursorFactory$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->D(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/r<",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "Landroid/database/sqlite/SQLiteCursorDriver;",
        "Ljava/lang/String;",
        "Landroid/database/sqlite/SQLiteQuery;",
        "Landroid/database/sqlite/SQLiteCursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $query:Landroidx/sqlite/db/SupportSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/sqlite/db/SupportSQLiteQuery;)V
    .locals 0

    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$query$cursorFactory$1;->$query:Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/sqlite/SQLiteCursor;
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/database/sqlite/SQLiteCursorDriver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/database/sqlite/SQLiteQuery;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$query$cursorFactory$1;->$query:Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 3
    .line 4
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 5
    .line 6
    .line 7
    invoke-static {p4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p4}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteQuery;->e(Landroidx/sqlite/db/SupportSQLiteProgram;)V

    .line 14
    .line 15
    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 19
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    .line 4
    check-cast p2, Landroid/database/sqlite/SQLiteCursorDriver;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/String;

    .line 7
    .line 8
    check-cast p4, Landroid/database/sqlite/SQLiteQuery;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$query$cursorFactory$1;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/sqlite/SQLiteCursor;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
