.class Lcom/narvii/poweruser/PowerFeedHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/PowerFeedHelper;->showFeatureDialog(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/PowerFeedHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/PowerFeedHelper;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-eq p2, p1, :cond_1

    .line 7
    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    .line 12
    const/4 p2, 0x3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2, v0}, Lcom/narvii/poweruser/PowerFeedHelper;->a(Lcom/narvii/poweruser/PowerFeedHelper;ILcom/narvii/util/Callback;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    iget-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0, p2}, Lcom/narvii/poweruser/PowerFeedHelper;->a(Lcom/narvii/poweruser/PowerFeedHelper;ILcom/narvii/util/Callback;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_2
    iget-object p2, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p1, v0}, Lcom/narvii/poweruser/PowerFeedHelper;->a(Lcom/narvii/poweruser/PowerFeedHelper;ILcom/narvii/util/Callback;)V

    .line 34
    :goto_0
    return-void
.end method
