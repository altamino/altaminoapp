.class Lcom/narvii/monetization/bubble/BubbleHelper$2;
.super Ljava/lang/Object;
.source "BubbleHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleHelper;->showRemoveCurBubbleDialog(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$2;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleHelper$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 129
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
