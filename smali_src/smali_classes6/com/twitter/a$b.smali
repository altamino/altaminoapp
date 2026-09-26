.class public Lcom/twitter/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/a$b$a;
    }
.end annotation


# instance fields
.field protected displayURL:Ljava/lang/String;

.field protected end:I

.field protected expandedURL:Ljava/lang/String;

.field protected final listSlug:Ljava/lang/String;

.field protected start:I

.field protected final type:Lcom/twitter/a$b$a;

.field protected final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/twitter/a$b$a;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/twitter/a$b;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/twitter/a$b$a;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/twitter/a$b$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/a$b;->displayURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/a$b;->expandedURL:Ljava/lang/String;

    iput p1, p0, Lcom/twitter/a$b;->start:I

    iput p2, p0, Lcom/twitter/a$b;->end:I

    iput-object p3, p0, Lcom/twitter/a$b;->value:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/a$b;->listSlug:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/a$b;->type:Lcom/twitter/a$b$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Matcher;Lcom/twitter/a$b$a;I)V
    .locals 1

    const/4 v0, -0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/a$b;-><init>(Ljava/util/regex/Matcher;Lcom/twitter/a$b$a;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Matcher;Lcom/twitter/a$b$a;II)V
    .locals 1

    .line 4
    invoke-virtual {p1, p3}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p1, p3}, Ljava/util/regex/Matcher;->end(I)I

    move-result p4

    invoke-virtual {p1, p3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p4, p1, p2}, Lcom/twitter/a$b;-><init>(IILjava/lang/String;Lcom/twitter/a$b$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/twitter/a$b;->end:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/twitter/a$b;->start:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Lcom/twitter/a$b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/a$b;->type:Lcom/twitter/a$b$a;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/a$b;->value:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/twitter/a$b;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    check-cast p1, Lcom/twitter/a$b;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/twitter/a$b;->type:Lcom/twitter/a$b$a;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/twitter/a$b;->type:Lcom/twitter/a$b$a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget v1, p0, Lcom/twitter/a$b;->start:I

    .line 25
    .line 26
    iget v3, p1, Lcom/twitter/a$b;->start:I

    .line 27
    .line 28
    if-ne v1, v3, :cond_2

    .line 29
    .line 30
    iget v1, p0, Lcom/twitter/a$b;->end:I

    .line 31
    .line 32
    iget v3, p1, Lcom/twitter/a$b;->end:I

    .line 33
    .line 34
    if-ne v1, v3, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/twitter/a$b;->value:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/twitter/a$b;->value:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    return v0

    .line 46
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/twitter/a$b;->type:Lcom/twitter/a$b$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/twitter/a$b;->value:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    .line 15
    iget v1, p0, Lcom/twitter/a$b;->start:I

    .line 16
    add-int/2addr v0, v1

    .line 17
    .line 18
    iget v1, p0, Lcom/twitter/a$b;->end:I

    .line 19
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/twitter/a$b;->value:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "("

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/twitter/a$b;->type:Lcom/twitter/a$b$a;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, ") ["

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget v1, p0, Lcom/twitter/a$b;->start:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, ","

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    iget v1, p0, Lcom/twitter/a$b;->end:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "]"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
