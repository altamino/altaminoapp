.class Lcom/narvii/app/AminoWebViewFragment$1;
.super Ljava/lang/Object;
.source "AminoWebViewFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/AminoWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/AminoWebViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/AminoWebViewFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$1;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/narvii/app/AminoWebViewFragment$1;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    iget-object v0, v0, Lcom/narvii/app/AminoWebViewFragment;->safeValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_1

    .line 147
    iget-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$1;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 148
    iget-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$1;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    invoke-static {p1}, Lcom/narvii/app/AminoWebViewFragment;->access$000(Lcom/narvii/app/AminoWebViewFragment;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFocus()V

    .line 149
    iget-object p1, p0, Lcom/narvii/app/AminoWebViewFragment$1;->this$0:Lcom/narvii/app/AminoWebViewFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f118f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 143
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/app/AminoWebViewFragment$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
