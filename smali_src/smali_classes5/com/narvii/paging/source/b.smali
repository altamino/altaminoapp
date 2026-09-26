.class public final synthetic Lcom/narvii/paging/source/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/paging/source/DataSource;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/paging/source/DataSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/source/b;->a:Lcom/narvii/paging/source/DataSource;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/paging/source/b;->a:Lcom/narvii/paging/source/DataSource;

    check-cast p1, Lcom/narvii/paging/source/DataSourceChangeListener;

    invoke-static {v0, p1}, Lcom/narvii/paging/source/DataSource;->b(Lcom/narvii/paging/source/DataSource;Lcom/narvii/paging/source/DataSourceChangeListener;)V

    return-void
.end method
