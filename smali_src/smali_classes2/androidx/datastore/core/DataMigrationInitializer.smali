.class public final Landroidx/datastore/core/DataMigrationInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/DataMigrationInitializer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/datastore/core/DataMigrationInitializer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/datastore/core/DataMigrationInitializer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/core/DataMigrationInitializer$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/datastore/core/DataMigrationInitializer;->Companion:Landroidx/datastore/core/DataMigrationInitializer$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
