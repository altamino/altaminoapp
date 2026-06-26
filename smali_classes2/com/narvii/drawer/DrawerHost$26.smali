.class Lcom/narvii/drawer/DrawerHost$26;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 2280
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2317
    :sswitch_0
    const-class p1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2318
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2290
    :sswitch_1
    const-class p1, Lcom/narvii/catalog/review/CatalogSubmissionFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2291
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2295
    :sswitch_2
    const-class p1, Lcom/narvii/poweruser/ReorderFeatureFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2296
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2300
    :sswitch_3
    const-class p1, Lcom/narvii/poweruser/ModerationToolFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2301
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2285
    :sswitch_4
    const-class p1, Lcom/narvii/flag/FlagListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2286
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2305
    :sswitch_5
    new-instance p1, Lcom/narvii/util/PackageUtils;

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 2306
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->installedAcm()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Lcom/narvii/util/PackageUtils;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getAcmScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2308
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2309
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2310
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    instance-of v0, p1, Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_1

    .line 2311
    new-instance v0, Lcom/narvii/master/NewDownloadAcmDialog;

    check-cast p1, Lcom/narvii/app/NVContext;

    invoke-direct {v0, p1}, Lcom/narvii/master/NewDownloadAcmDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 2312
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 2321
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$26;->this$0:Lcom/narvii/drawer/DrawerHost;

    const v0, 0xfa0001

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->sendEvent(ILjava/lang/Object;)Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090388 -> :sswitch_5
        0x7f09038c -> :sswitch_4
        0x7f090397 -> :sswitch_3
        0x7f09039c -> :sswitch_2
        0x7f09039e -> :sswitch_1
        0x7f0903ab -> :sswitch_0
    .end sparse-switch
.end method
