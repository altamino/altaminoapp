.class Lcom/narvii/search/SearchKeywordTabFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/search/SearchKeywordTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/search/SearchKeywordTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/search/SearchKeywordTabFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment$2;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/search/SearchKeywordTabFragment$2$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/search/SearchKeywordTabFragment$2$1;-><init>(Lcom/narvii/search/SearchKeywordTabFragment$2;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method
