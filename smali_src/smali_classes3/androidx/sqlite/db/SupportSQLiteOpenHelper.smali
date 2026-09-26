.class public interface abstract Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;,
        Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;,
        Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getDatabaseName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setWriteAheadLoggingEnabled(Z)V
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end method
