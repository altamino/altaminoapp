.class Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;
.super Ljava/lang/Object;
.source "DrawerHost.java"

# interfaces
.implements Lcom/narvii/amino/page/PageItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPageItemClickListener"
.end annotation


# instance fields
.field level:I

.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;I)V
    .locals 0

    .line 2102
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2103
    iput p2, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->level:I

    return-void
.end method


# virtual methods
.method public onItemClicked(ILcom/narvii/modulization/page/Page;)V
    .locals 9

    const-string p1, "title"

    const-string v0, "Source"

    .line 2108
    invoke-virtual {p2}, Lcom/narvii/modulization/page/Page;->needSession()Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0xfa0001

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2109
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/narvii/account/LoginActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2110
    sget-object p2, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "promptType"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2111
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p2, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2113
    :cond_0
    iget-object v1, p2, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    const-string v4, "ndc://default"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "Left Side Panel"

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 2115
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    const p2, 0x10001

    invoke-virtual {p1, p2}, Lcom/narvii/drawer/DrawerHost;->goHome(I)V

    .line 2116
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1, v5}, Lcom/narvii/drawer/DrawerHost;->smoothScrollToTop(Z)V

    .line 2119
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1, v3, v2}, Lcom/narvii/drawer/DrawerHost;->sendEvent(ILjava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2122
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    iget-object v8, p2, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2123
    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2124
    iget v7, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->level:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    const-string v4, "Left Side Panel 2"

    :cond_2
    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2126
    :cond_3
    invoke-virtual {v6, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2127
    iget-object v0, p2, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    invoke-virtual {v6, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string p1, "ndc://catalog"

    .line 2129
    iget-object v0, p2, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2130
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/catalog/CatalogWrapperActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isAllEntry"

    .line 2131
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v6, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "fragment"

    .line 2132
    const-class v0, Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const-string p1, "ndc://stories"

    .line 2134
    iget-object v0, p2, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2135
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_7

    .line 2136
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    check-cast p1, Lcom/narvii/app/NVContext;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "SideMenu"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->fakePVId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Stories"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 2139
    :cond_7
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1, v6}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to open page "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2142
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0766

    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 2146
    :goto_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {p1, v3, v2}, Lcom/narvii/drawer/DrawerHost;->sendEvent(ILjava/lang/Object;)Z

    return-void
.end method
