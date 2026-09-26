.class public final synthetic Lcom/narvii/master/search/history/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/search/history/SearchHistoryDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/search/history/SearchHistoryDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/search/history/a;->a:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/search/history/a;->a:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-static {v0, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->a(Lcom/narvii/master/search/history/SearchHistoryDelegate;Landroid/view/View;)V

    return-void
.end method
