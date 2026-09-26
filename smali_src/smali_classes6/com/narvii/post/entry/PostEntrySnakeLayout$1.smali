.class Lcom/narvii/post/entry/PostEntrySnakeLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/entry/PostEntrySnakeLayout;->setEntryKeys(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/post/entry/EntryItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/entry/PostEntrySnakeLayout;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcom/narvii/post/entry/EntryItemClickListener;

.field final synthetic val$result:Lcom/narvii/modulization/entry/EntryEligibleCheckResult;


# direct methods
.method constructor <init>(Lcom/narvii/post/entry/PostEntrySnakeLayout;Lcom/narvii/post/entry/EntryItemClickListener;Ljava/lang/String;Lcom/narvii/modulization/entry/EntryEligibleCheckResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$1;->this$0:Lcom/narvii/post/entry/PostEntrySnakeLayout;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$1;->val$listener:Lcom/narvii/post/entry/EntryItemClickListener;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$1;->val$key:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$1;->val$result:Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$1;->val$listener:Lcom/narvii/post/entry/EntryItemClickListener;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$1;->val$key:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout$1;->val$result:Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0, v1}, Lcom/narvii/post/entry/EntryItemClickListener;->onEntryItemClicked(Ljava/lang/String;Lcom/narvii/modulization/entry/EntryEligibleCheckResult;)V

    .line 12
    :cond_0
    return-void
.end method
