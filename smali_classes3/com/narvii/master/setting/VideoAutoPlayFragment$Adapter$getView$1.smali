.class final Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter$getView$1;
.super Ljava/lang/Object;
.source "VideoAutoPlayFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $position:I

.field final synthetic this$0:Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter$getView$1;->this$0:Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;

    iput p2, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter$getView$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter$getView$1;->this$0:Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;

    invoke-static {p1}, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;->access$getContext$p(Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/setting/VideoAutoPlayFragment;

    invoke-static {p1}, Lcom/narvii/master/setting/VideoAutoPlayFragment;->access$getCurrentCond$p(Lcom/narvii/master/setting/VideoAutoPlayFragment;)I

    move-result p1

    iget v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter$getView$1;->$position:I

    if-eq p1, v0, :cond_0

    .line 81
    iget-object p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter$getView$1;->this$0:Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;

    invoke-static {p1}, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;->access$getContext$p(Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/setting/VideoAutoPlayFragment;

    iget v0, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter$getView$1;->$position:I

    invoke-static {p1, v0}, Lcom/narvii/master/setting/VideoAutoPlayFragment;->access$setCurrentCond$p(Lcom/narvii/master/setting/VideoAutoPlayFragment;I)V

    .line 82
    iget-object p1, p0, Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter$getView$1;->this$0:Lcom/narvii/master/setting/VideoAutoPlayFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
