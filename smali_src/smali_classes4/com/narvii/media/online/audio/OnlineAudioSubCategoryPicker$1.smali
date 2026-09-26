.class Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->w(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Ljava/util/Set;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->y(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->t(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$1;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->t(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$Adapter;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 32
    :cond_0
    return-void
.end method
