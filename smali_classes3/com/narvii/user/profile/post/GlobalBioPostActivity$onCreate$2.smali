.class public final Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$2;
.super Ljava/lang/Object;
.source "GlobalBioPostActivity.kt"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/post/GlobalBioPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$2;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 99
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$2;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    invoke-static {p1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result p1

    .line 101
    invoke-static {}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$Companion()Lcom/narvii/user/profile/post/GlobalBioPostActivity$Companion;

    const/16 p2, 0x14

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
