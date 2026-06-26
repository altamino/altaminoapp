.class final Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper$onFinish$1;
.super Ljava/lang/Object;
.source "MyCommunityHelper.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper$onFinish$1;->this$0:Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "obj"

    .line 458
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper$onFinish$1;->this$0:Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->getLaunching()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 459
    sget-object p1, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper$onFinish$1;->this$0:Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    iget-object v0, v0, Lcom/narvii/community/CommunityLaunchHelper;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 460
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper$onFinish$1;->this$0:Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->access$onFinish$s-465807059(Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;)V

    goto :goto_0

    .line 462
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper$onFinish$1;->this$0:Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    iget-object p1, p1, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->this$0:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityHelper;->cancelLaunch()V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 436
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper$onFinish$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
