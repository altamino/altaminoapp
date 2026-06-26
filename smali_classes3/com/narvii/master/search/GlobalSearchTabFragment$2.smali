.class Lcom/narvii/master/search/GlobalSearchTabFragment$2;
.super Ljava/lang/Object;
.source "GlobalSearchTabFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalSearchTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$2;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 167
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$2;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-virtual {p1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->onSearchEditTouchUpListener()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
