.class Lcom/narvii/poll/PollAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poll/PollAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poll/PollAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/poll/PollAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poll/PollAdapter$2;->this$0:Lcom/narvii/poll/PollAdapter;

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
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter$2;->this$0:Lcom/narvii/poll/PollAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/poll/PollAdapter;->refresh()V

    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    .line 10
    if-ne p2, p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/poll/PollAdapter$2;->this$0:Lcom/narvii/poll/PollAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/poll/PollAdapter;->organizer()V

    .line 16
    :cond_1
    return-void
.end method
