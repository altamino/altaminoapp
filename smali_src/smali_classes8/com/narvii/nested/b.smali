.class public final synthetic Lcom/narvii/nested/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/nested/CoordinateTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nested/CoordinateTabFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nested/b;->a:Lcom/narvii/nested/CoordinateTabFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/nested/b;->a:Lcom/narvii/nested/CoordinateTabFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->n(Lcom/narvii/nested/CoordinateTabFragment;Ljava/lang/Integer;)V

    return-void
.end method
