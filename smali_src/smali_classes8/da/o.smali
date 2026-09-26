.class public final synthetic Lda/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lda/k;

    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-direct {v0, p1}, Lda/k;-><init>(Lorg/jsoup/nodes/Element;)V

    return-object v0
.end method
