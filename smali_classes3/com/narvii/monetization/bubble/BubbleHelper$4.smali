.class Lcom/narvii/monetization/bubble/BubbleHelper$4;
.super Ljava/lang/Object;
.source "BubbleHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleHelper;->showBubbleEditActionDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

.field final synthetic val$deleteCallback:Lcom/narvii/util/Callback;

.field final synthetic val$editCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$4;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleHelper$4;->val$editCallback:Lcom/narvii/util/Callback;

    iput-object p3, p0, Lcom/narvii/monetization/bubble/BubbleHelper$4;->val$deleteCallback:Lcom/narvii/util/Callback;

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

    .line 159
    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleHelper$4;->val$deleteCallback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_2

    .line 160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleHelper$4;->val$editCallback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_2

    .line 155
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
