.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$3;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->initFakeActionBar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileFragment.kt\ncom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$3\n*L\n1#1,1015:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$3;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 504
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$3;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUser()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$3;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "ShareIcon"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$3;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUser()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 506
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$initFakeActionBar$3;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogForGlobalProfile(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;Z)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    :cond_0
    return-void
.end method
