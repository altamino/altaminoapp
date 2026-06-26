.class Lcom/narvii/invite/InviteContactFragment$3;
.super Ljava/lang/Object;
.source "InviteContactFragment.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/invite/InviteContactFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/invite/InviteContactFragment;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteContactFragment;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$3;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment$3;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-static {p1}, Lcom/narvii/invite/InviteContactFragment;->access$100(Lcom/narvii/invite/InviteContactFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment$3;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-static {p1}, Lcom/narvii/invite/InviteContactFragment;->access$100(Lcom/narvii/invite/InviteContactFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment$3;->this$0:Lcom/narvii/invite/InviteContactFragment;

    invoke-static {p1}, Lcom/narvii/invite/InviteContactFragment;->access$100(Lcom/narvii/invite/InviteContactFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
