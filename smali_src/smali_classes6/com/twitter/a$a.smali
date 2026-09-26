.class Lcom/twitter/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/a;->removeOverlappingEntities(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/twitter/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/a;


# direct methods
.method constructor <init>(Lcom/twitter/a;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/twitter/a$a;->this$0:Lcom/twitter/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/a$b;Lcom/twitter/a$b;)I
    .locals 0

    .line 1
    .line 2
    iget p1, p1, Lcom/twitter/a$b;->start:I

    .line 3
    .line 4
    iget p2, p2, Lcom/twitter/a$b;->start:I

    .line 5
    sub-int/2addr p1, p2

    .line 6
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/twitter/a$b;

    .line 3
    .line 4
    check-cast p2, Lcom/twitter/a$b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/twitter/a$a;->a(Lcom/twitter/a$b;Lcom/twitter/a$b;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
