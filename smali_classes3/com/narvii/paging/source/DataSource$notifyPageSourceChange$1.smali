.class final Lcom/narvii/paging/source/DataSource$notifyPageSourceChange$1;
.super Ljava/lang/Object;
.source "DataSource.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/paging/source/DataSourceChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/source/DataSource;


# direct methods
.method constructor <init>(Lcom/narvii/paging/source/DataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/paging/source/DataSource$notifyPageSourceChange$1;->this$0:Lcom/narvii/paging/source/DataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/paging/source/DataSourceChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource$notifyPageSourceChange$1;->this$0:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/paging/source/DataSourceChangeListener;->onPageListChanged(Lcom/narvii/paging/storage/PageStorage;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/narvii/paging/source/DataSourceChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/paging/source/DataSource$notifyPageSourceChange$1;->call(Lcom/narvii/paging/source/DataSourceChangeListener;)V

    return-void
.end method
