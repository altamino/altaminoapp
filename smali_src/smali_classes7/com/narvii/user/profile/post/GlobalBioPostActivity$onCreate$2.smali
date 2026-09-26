.class public final Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$2;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const/16 p1, 0x42

    .line 3
    .line 4
    if-ne p2, p1, :cond_1

    .line 5
    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/user/profile/post/GlobalBioPostActivity$onCreate$2;->this$0:Lcom/narvii/user/profile/post/GlobalBioPostActivity;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/user/profile/post/GlobalBioPostActivity;->access$getEditContent$p(Lcom/narvii/user/profile/post/GlobalBioPostActivity;)Lcom/narvii/widget/EditTextLink;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const-string p1, "editContent"

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 26
    const/4 p1, 0x0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    .line 30
    move-result p1

    .line 31
    .line 32
    const/16 p2, 0x14

    .line 33
    .line 34
    if-lt p1, p2, :cond_1

    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    return p1
.end method
