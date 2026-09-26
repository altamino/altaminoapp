.class public final synthetic Lka/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lka/c;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lka/c;ZLjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lka/a;->a:Lka/c;

    iput-boolean p2, p0, Lka/a;->b:Z

    iput-object p3, p0, Lka/a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lka/a;->a:Lka/c;

    iget-boolean v1, p0, Lka/a;->b:Z

    iget-object v2, p0, Lka/a;->c:Ljava/util/List;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, v1, v2, p1}, Lka/c;->d0(Lka/c;ZLjava/util/List;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method
