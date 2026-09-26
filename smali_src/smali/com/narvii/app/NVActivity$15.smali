.class Lcom/narvii/app/NVActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVActivity;->handleATO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVActivity;

.field final synthetic val$deeplink:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/NVActivity$15;->this$0:Lcom/narvii/app/NVActivity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/app/NVActivity$15;->val$deeplink:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/app/NVActivity$15;->val$url:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/app/NVActivity$15;->val$deeplink:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    const/16 v0, 0x4f

    .line 9
    .line 10
    const-string v1, "android.intent.action.VIEW"

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/app/NVActivity$15;->val$deeplink:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "ndc://"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/app/NVActivity$15;->val$deeplink:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/app/NVActivity$15;->val$deeplink:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/app/NVActivity$15;->this$0:Lcom/narvii/app/NVActivity;

    .line 41
    .line 42
    new-instance v3, Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v3, v0}, Lcom/narvii/app/NVActivity$15;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/NVActivity$15;->this$0:Lcom/narvii/app/NVActivity;

    .line 52
    .line 53
    const-string v2, "fragmentRegister"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    check-cast p1, Lcom/narvii/app/FragmentRegister;

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    const-string v2, "accountWebView"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Lcom/narvii/app/FragmentRegister;->getFragmentDeepLinkUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    new-instance v2, Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .line 76
    const-string/jumbo p1, "url"

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/app/NVActivity$15;->val$url:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/app/NVActivity$15;->this$0:Lcom/narvii/app/NVActivity;

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v2, v0}, Lcom/narvii/app/NVActivity$15;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 87
    .line 88
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/app/NVActivity$15;->this$0:Lcom/narvii/app/NVActivity;

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->j(Lcom/narvii/app/NVActivity;)Lcom/narvii/widget/ACMAlertDialog;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/app/NVActivity$15;->this$0:Lcom/narvii/app/NVActivity;

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Lcom/narvii/app/NVActivity;->j(Lcom/narvii/app/NVActivity;)Lcom/narvii/widget/ACMAlertDialog;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 104
    :cond_2
    return-void
.end method
