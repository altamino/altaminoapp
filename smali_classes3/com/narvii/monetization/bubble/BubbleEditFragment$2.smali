.class Lcom/narvii/monetization/bubble/BubbleEditFragment$2;
.super Ljava/lang/Object;
.source "BubbleEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleEditFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->access$200(Lcom/narvii/monetization/bubble/BubbleEditFragment;Z)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {p2, p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->access$200(Lcom/narvii/monetization/bubble/BubbleEditFragment;Z)V

    :goto_0
    return-void
.end method
