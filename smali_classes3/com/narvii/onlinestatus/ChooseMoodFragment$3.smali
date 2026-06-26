.class Lcom/narvii/onlinestatus/ChooseMoodFragment$3;
.super Ljava/lang/Object;
.source "ChooseMoodFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/onlinestatus/ChooseMoodFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;


# direct methods
.method constructor <init>(Lcom/narvii/onlinestatus/ChooseMoodFragment;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$3;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/narvii/onlinestatus/ChooseMoodFragment$3;->this$0:Lcom/narvii/onlinestatus/ChooseMoodFragment;

    iget-object v0, p1, Lcom/narvii/onlinestatus/ChooseMoodFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_0

    .line 179
    invoke-static {p1}, Lcom/narvii/onlinestatus/ChooseMoodFragment;->access$300(Lcom/narvii/onlinestatus/ChooseMoodFragment;)Lcom/narvii/widget/MoodView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/widget/MoodView;->shakeTouch()V

    :cond_0
    return-void
.end method
