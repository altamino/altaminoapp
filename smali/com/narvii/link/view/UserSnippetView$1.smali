.class Lcom/narvii/link/view/UserSnippetView$1;
.super Ljava/lang/Object;
.source "UserSnippetView.java"

# interfaces
.implements Lcom/narvii/link/LoadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/view/UserSnippetView;->setObject(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/link/view/UserSnippetView;


# direct methods
.method constructor <init>(Lcom/narvii/link/view/UserSnippetView;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/narvii/link/view/UserSnippetView$1;->this$0:Lcom/narvii/link/view/UserSnippetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/link/view/UserSnippetView$1;->this$0:Lcom/narvii/link/view/UserSnippetView;

    invoke-virtual {v0}, Lcom/narvii/link/view/LoadTrackView;->checkIfAllLoadFinished()V

    return-void
.end method
