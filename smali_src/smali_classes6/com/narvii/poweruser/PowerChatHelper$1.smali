.class Lcom/narvii/poweruser/PowerChatHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/PowerChatHelper;->showFeatureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/PowerChatHelper;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/PowerChatHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper$1;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
    iget-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper$1;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    .line 12
    const/4 p2, 0x3

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/narvii/poweruser/PowerChatHelper;->a(Lcom/narvii/poweruser/PowerChatHelper;I)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper$1;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/narvii/poweruser/PowerChatHelper;->a(Lcom/narvii/poweruser/PowerChatHelper;I)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_2
    iget-object p2, p0, Lcom/narvii/poweruser/PowerChatHelper$1;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    .line 25
    .line 26
    .line 27
    invoke-static {p2, p1}, Lcom/narvii/poweruser/PowerChatHelper;->a(Lcom/narvii/poweruser/PowerChatHelper;I)V

    .line 28
    :goto_0
    return-void
.end method
