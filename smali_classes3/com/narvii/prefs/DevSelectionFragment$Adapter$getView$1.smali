.class final Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;
.super Ljava/lang/Object;
.source "DevSelectionFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/DevSelectionFragment$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $content:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/DevSelectionFragment$Adapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {p1}, Lcom/narvii/prefs/DevSelectionFragment;->access$isSingleSelection$p(Lcom/narvii/prefs/DevSelectionFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {p1}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->$content:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {p1}, Lcom/narvii/prefs/DevSelectionFragment;->access$getProgressDialog$p(Lcom/narvii/prefs/DevSelectionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {p1}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 120
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {p1}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->$content:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {p1}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->$content:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {p1}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->$content:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->this$0:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {p1}, Lcom/narvii/prefs/DevSelectionFragment;->access$getSelectedItems$p(Lcom/narvii/prefs/DevSelectionFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->$content:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object p1, p0, Lcom/narvii/prefs/DevSelectionFragment$Adapter$getView$1;->this$0:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
