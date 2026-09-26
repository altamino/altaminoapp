.class Lcom/narvii/monetization/bubble/BubbleHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$4;->this$0:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleHelper$4;->val$editCallback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/monetization/bubble/BubbleHelper$4;->val$deleteCallback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$4;->val$deleteCallback:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper$4;->val$editCallback:Lcom/narvii/util/Callback;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 26
    :cond_2
    :goto_0
    return-void
.end method
