.class Lcom/narvii/chat/detail/BackgroundPickerFragment$2;
.super Ljava/lang/Object;
.source "BackgroundPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/BackgroundPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$2;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$2;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->onPostBackground()V

    return-void
.end method
