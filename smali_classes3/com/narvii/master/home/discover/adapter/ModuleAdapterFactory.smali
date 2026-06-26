.class public final Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;
.super Ljava/lang/Object;
.source "ModuleAdapterFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

.field public static final LISTVIEW_ENTER_SOURCE_MORE:Ljava/lang/String; = "moreButton"

.field public static final LISTVIEW_ENTER_SOURCE_TITLE:Ljava/lang/String; = "moduleTitle"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
