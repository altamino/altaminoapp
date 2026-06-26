.class Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;
.super Ljava/lang/Object;
.source "SetBubbleForThreadFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;->onCreateChatClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;->this$0:Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/SetBubbleForThreadFragment$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
