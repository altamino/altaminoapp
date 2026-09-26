.class Lcom/narvii/monetization/bubble/BubbleEditFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->s(Lcom/narvii/monetization/bubble/BubbleEditFragment;Z)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_1
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$2;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p1}, Lcom/narvii/monetization/bubble/BubbleEditFragment;->s(Lcom/narvii/monetization/bubble/BubbleEditFragment;Z)V

    .line 19
    :goto_0
    return-void
.end method
