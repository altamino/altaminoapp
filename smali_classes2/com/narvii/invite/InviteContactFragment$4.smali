.class Lcom/narvii/invite/InviteContactFragment$4;
.super Ljava/lang/Object;
.source "InviteContactFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$gd:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteContactFragment;Landroid/view/GestureDetector;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$4;->this$0:Lcom/narvii/invite/InviteContactFragment;

    iput-object p2, p0, Lcom/narvii/invite/InviteContactFragment$4;->val$gd:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment$4;->val$gd:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
