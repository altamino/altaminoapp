.class Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;
.super Ljava/lang/Object;
.source "OnlineAudioSubCategoryPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;


# direct methods
.method constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$000(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 79
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$100(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$200(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$200(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
