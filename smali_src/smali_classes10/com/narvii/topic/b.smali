.class public final synthetic Lcom/narvii/topic/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/BookmarkedTopicListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/BookmarkedTopicListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/b;->a:Lcom/narvii/topic/BookmarkedTopicListFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/b;->a:Lcom/narvii/topic/BookmarkedTopicListFragment;

    invoke-static {v0, p1}, Lcom/narvii/topic/BookmarkedTopicListFragment;->t(Lcom/narvii/topic/BookmarkedTopicListFragment;Landroid/view/View;)V

    return-void
.end method
