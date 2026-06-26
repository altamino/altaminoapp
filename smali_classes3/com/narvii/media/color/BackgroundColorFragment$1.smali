.class Lcom/narvii/media/color/BackgroundColorFragment$1;
.super Ljava/lang/Object;
.source "BackgroundColorFragment.java"

# interfaces
.implements Lcom/narvii/media/color/DefaultBackgroundRecyclerView$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/color/BackgroundColorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/color/BackgroundColorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/color/BackgroundColorFragment;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/media/color/BackgroundColorFragment$1;->this$0:Lcom/narvii/media/color/BackgroundColorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/narvii/media/color/BackgroundColorFragment$1;->this$0:Lcom/narvii/media/color/BackgroundColorFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/media/color/BaseColorPickerFragment;->setColor(I)V

    return-void
.end method
