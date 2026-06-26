.class final Lcom/narvii/community/MyCommunityHelper$launchCommunity$btnYes$1;
.super Ljava/lang/Object;
.source "MyCommunityHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/MyCommunityHelper;->launchCommunity(Lcom/narvii/model/Community;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $item:Lcom/narvii/model/Community;

.field final synthetic $packageUtils:Lcom/narvii/util/PackageUtils;


# direct methods
.method constructor <init>(Lcom/narvii/model/Community;Lcom/narvii/util/PackageUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper$launchCommunity$btnYes$1;->$item:Lcom/narvii/model/Community;

    iput-object p2, p0, Lcom/narvii/community/MyCommunityHelper$launchCommunity$btnYes$1;->$packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ndc://x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$launchCommunity$btnYes$1;->$item:Lcom/narvii/model/Community;

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/description"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$launchCommunity$btnYes$1;->$packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Standalone App"

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/util/PackageUtils;->openGooglePlayWithNativeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
