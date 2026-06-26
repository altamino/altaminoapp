.class public final Lcom/narvii/master/widget/MasterBottomBar$Companion;
.super Ljava/lang/Object;
.source "MasterBottomBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/widget/MasterBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/narvii/master/widget/MasterBottomBar$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChatConf()Lkotlin/Triple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/narvii/master/widget/MasterBottomBar;->access$getChatConf$cp()Lkotlin/Triple;

    move-result-object v0

    return-object v0
.end method

.method public final getChatUnreadConf()Lkotlin/Triple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/narvii/master/widget/MasterBottomBar;->access$getChatUnreadConf$cp()Lkotlin/Triple;

    move-result-object v0

    return-object v0
.end method

.method public final getCommunityConf()Lkotlin/Triple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/narvii/master/widget/MasterBottomBar;->access$getCommunityConf$cp()Lkotlin/Triple;

    move-result-object v0

    return-object v0
.end method

.method public final getDiscoverConf()Lkotlin/Triple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/narvii/master/widget/MasterBottomBar;->access$getDiscoverConf$cp()Lkotlin/Triple;

    move-result-object v0

    return-object v0
.end method
