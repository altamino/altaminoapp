.class public final synthetic Lcom/narvii/paging/source/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/paging/source/DataSourceChangeListener;

    invoke-static {p1}, Lcom/narvii/paging/source/DataSource;->a(Lcom/narvii/paging/source/DataSourceChangeListener;)V

    return-void
.end method
