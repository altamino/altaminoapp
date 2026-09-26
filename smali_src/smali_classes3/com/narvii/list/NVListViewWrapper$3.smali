.class Lcom/narvii/list/NVListViewWrapper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/NVListViewWrapper;->setErrorMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/NVListViewWrapper;


# direct methods
.method constructor <init>(Lcom/narvii/list/NVListViewWrapper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper$3;->this$0:Lcom/narvii/list/NVListViewWrapper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper$3;->this$0:Lcom/narvii/list/NVListViewWrapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/list/NVListViewWrapper;->onErrorRetry()V

    .line 6
    return-void
.end method
