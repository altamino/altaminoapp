.class public final synthetic Lcom/narvii/topic/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/topic/TopicRequestHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/topic/TopicRequestHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/e;->a:Lcom/narvii/topic/TopicRequestHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/topic/e;->a:Lcom/narvii/topic/TopicRequestHelper;

    invoke-static {v0, p1}, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->a(Lcom/narvii/topic/TopicRequestHelper;Landroid/view/View;)V

    return-void
.end method
