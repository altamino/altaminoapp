.class public Lcom/narvii/poweruser/PowerUserDialog;
.super Lcom/narvii/util/dialog/ActionSheetDialog;
.source "PowerUserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field private context:Lcom/narvii/app/NVContext;

.field private object:Lcom/narvii/model/NVObject;

.field private ops:[I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 45
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 42
    iput-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    .line 46
    iput-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    .line 47
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->account:Lcom/narvii/account/AccountService;

    .line 48
    invoke-virtual {p0, p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 84
    iget-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    aget p1, p1, p2

    const-string v0, "/"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 89
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    instance-of p2, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 91
    :try_start_0
    check-cast p1, Landroid/app/Activity;

    const/high16 p2, 0x3f800000    # 1.0f

    const/16 v2, 0x21c

    const/16 v3, 0x3c0

    invoke-static {p1, p2, v2, v3}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;FII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "urgent"

    const-string v3, "png"

    invoke-static {p2, v2, v3}, Lcom/narvii/util/image/Screenshot;->getNewScreenshotFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 93
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 94
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 95
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 96
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    move-object p1, v1

    .line 100
    :goto_0
    new-instance p2, Lcom/narvii/util/PackageUtils;

    iget-object v2, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    move-result-object p2

    .line 101
    iget-object v2, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    const-string v3, "navigator"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/BaseNavigator;

    .line 102
    new-instance v3, Landroid/content/Intent;

    const-string v4, "mailto"

    const-string v5, "urgent@altamino.top"

    invoke-static {v4, v5, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Urgent Review - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/narvii/poweruser/PowerUserDialog;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "<b>Reporter</b>:&nbsp; <a href=\""

    .line 107
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v2}, Lcom/narvii/app/BaseNavigator;->getMyScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://user/"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" style=\"text-decoration:none\"><font color=\"#000000\">"

    .line 109
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</font></a>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "From: [Unknown]"

    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "<br>"

    .line 114
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<b>Title</b>:&nbsp; "

    .line 115
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v4, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    instance-of v5, v4, Lcom/narvii/model/Feed;

    if-eqz v5, :cond_3

    .line 118
    check-cast v4, Lcom/narvii/model/Feed;

    invoke-virtual {v4}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 119
    :cond_3
    instance-of v5, v4, Lcom/narvii/model/User;

    if-eqz v5, :cond_4

    .line 120
    check-cast v4, Lcom/narvii/model/User;

    invoke-virtual {v4}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 121
    :cond_4
    instance-of v5, v4, Lcom/narvii/model/ChatThread;

    if-eqz v5, :cond_5

    .line 122
    check-cast v4, Lcom/narvii/model/ChatThread;

    iget-object v4, v4, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v4, ""

    .line 124
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/narvii/app/BaseNavigator;->getMyScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "<a href=\""

    .line 125
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\">"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</a><br>"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<b>Reason</b>:&nbsp; "

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p1, :cond_6

    const-string p2, "android.intent.extra.STREAM"

    .line 133
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    :cond_6
    iget-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f011d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 136
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-le p2, v0, :cond_7

    const/4 p2, 0x3

    .line 137
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    :cond_7
    iget-object p2, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 155
    :sswitch_1
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object p2, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    check-cast p2, Lcom/narvii/model/Feed;

    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V

    goto/16 :goto_4

    .line 159
    :sswitch_2
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object p2, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    check-cast p2, Lcom/narvii/model/Feed;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/FeedHelper;->delete(Lcom/narvii/model/Feed;Z)V

    goto/16 :goto_4

    .line 144
    :sswitch_3
    new-instance p1, Lcom/narvii/poweruser/ChangeCategoryFragment;

    invoke-direct {p1}, Lcom/narvii/poweruser/ChangeCategoryFragment;-><init>()V

    .line 145
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 149
    iget-object p2, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/narvii/app/NVActivity;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const-string v0, "changeCategory"

    .line 150
    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 151
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_4

    .line 164
    :sswitch_4
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 165
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/admin"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 167
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    aget p2, v0, p2

    const v0, 0x7f0f0ec3

    if-eq p2, v0, :cond_8

    const/16 p2, 0x72

    goto :goto_3

    :cond_8
    const/16 p2, 0x74

    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "adminOpName"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 168
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 170
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 173
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 174
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0f0087 -> :sswitch_4
        0x7f0f01c2 -> :sswitch_3
        0x7f0f0356 -> :sswitch_2
        0x7f0f03d9 -> :sswitch_1
        0x7f0f0ec3 -> :sswitch_4
        0x7f0f1117 -> :sswitch_0
    .end sparse-switch
.end method

.method public setTarget(Lcom/narvii/model/NVObject;)V
    .locals 7

    .line 52
    iput-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    .line 54
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 58
    :cond_0
    iget v1, v0, Lcom/narvii/model/User;->role:I

    .line 59
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->clearItems()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0f1117

    .line 63
    invoke-virtual {p0, v3, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 64
    iget-object v4, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    aput v3, v4, v2

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const v4, 0x7f0f01c2

    .line 66
    invoke-virtual {p0, v4, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 67
    iget-object v5, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    add-int/lit8 v6, v3, 0x1

    aput v4, v5, v3

    .line 68
    instance-of v3, p1, Lcom/narvii/model/Item;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/narvii/model/Item;

    iget-object v3, v3, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    iget v3, v3, Lcom/narvii/model/User;->role:I

    const/16 v4, 0xfe

    if-ne v3, v4, :cond_2

    const v3, 0x7f0f03d9

    .line 69
    invoke-virtual {p0, v3, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 70
    iget-object v4, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    add-int/lit8 v5, v6, 0x1

    aput v3, v4, v6

    const v3, 0x7f0f0356

    .line 71
    invoke-virtual {p0, v3, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 72
    iget-object v1, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    add-int/lit8 v6, v5, 0x1

    aput v3, v1, v5

    .line 74
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of p1, p1, Lcom/narvii/model/Feed;

    if-eqz p1, :cond_3

    const p1, 0x7f0f0087

    .line 75
    invoke-virtual {p0, p1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 76
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    add-int/lit8 v1, v6, 0x1

    aput p1, v0, v6

    const p1, 0x7f0f0ec3

    .line 77
    invoke-virtual {p0, p1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 78
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    aput p1, v0, v1

    :cond_3
    :goto_1
    return-void
.end method
