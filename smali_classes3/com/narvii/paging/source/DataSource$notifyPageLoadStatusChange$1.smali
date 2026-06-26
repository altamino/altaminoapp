.class final Lcom/narvii/paging/source/DataSource$notifyPageLoadStatusChange$1;
.super Ljava/lang/Object;
.source "DataSource.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/paging/source/DataSource;->notifyPageLoadStatusChange()V
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


# static fields
.field public static final INSTANCE:Lcom/narvii/paging/source/DataSource$notifyPageLoadStatusChange$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/paging/source/DataSource$notifyPageLoadStatusChange$1;

    invoke-direct {v0}, Lcom/narvii/paging/source/DataSource$notifyPageLoadStatusChange$1;-><init>()V

    sput-object v0, Lcom/narvii/paging/source/DataSource$notifyPageLoadStatusChange$1;->INSTANCE:Lcom/narvii/paging/source/DataSource$notifyPageLoadStatusChange$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/paging/source/DataSourceChangeListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 155
    invoke-interface {p1}, Lcom/narvii/paging/source/DataSourceChangeListener;->onPageLoadStatusChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/narvii/paging/source/DataSourceChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/paging/source/DataSource$notifyPageLoadStatusChange$1;->call(Lcom/narvii/paging/source/DataSourceChangeListener;)V

    return-void
.end method
