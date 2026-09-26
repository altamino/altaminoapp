.class public final synthetic Lcom/narvii/master/home/discover/adapter/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

.field public final synthetic c:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(ZLcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/narvii/master/home/discover/adapter/t;->a:Z

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/t;->b:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/t;->c:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/adapter/t;->a:Z

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/t;->b:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    iget-object v2, p0, Lcom/narvii/master/home/discover/adapter/t;->c:Landroid/widget/PopupWindow;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->h(ZLcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method
