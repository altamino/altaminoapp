.class public final Landroidx/renderscript/ScriptGroup$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mKernelCount:I

.field private mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/renderscript/ScriptGroup$ConnectLine;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/renderscript/ScriptGroup$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRS:Landroidx/renderscript/RenderScript;

.field private mUseIncSupp:Z


# direct methods
.method public constructor <init>(Landroidx/renderscript/RenderScript;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput-boolean v0, p0, Landroidx/renderscript/ScriptGroup$Builder;->mUseIncSupp:Z

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/renderscript/ScriptGroup$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 23
    return-void
.end method

.method private calcOrder()Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    move v2, v1

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v3

    .line 13
    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Landroidx/renderscript/ScriptGroup$Node;

    .line 21
    .line 22
    iget-object v4, v3, Landroidx/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v4

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    iget-object v4, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v5

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    check-cast v5, Landroidx/renderscript/ScriptGroup$Node;

    .line 47
    const/4 v6, 0x0

    .line 48
    .line 49
    iput-boolean v6, v5, Landroidx/renderscript/ScriptGroup$Node;->mSeen:Z

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-direct {p0, v3, v1}, Landroidx/renderscript/ScriptGroup$Builder;->calcOrderRecurse(Landroidx/renderscript/ScriptGroup$Node;I)Z

    .line 54
    move-result v3

    .line 55
    and-int/2addr v2, v3

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v1, Landroidx/renderscript/ScriptGroup$Builder$1;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, p0}, Landroidx/renderscript/ScriptGroup$Builder$1;-><init>(Landroidx/renderscript/ScriptGroup$Builder;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    return v2
.end method

.method private calcOrderRecurse(Landroidx/renderscript/ScriptGroup$Node;I)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p1, Landroidx/renderscript/ScriptGroup$Node;->mSeen:Z

    .line 4
    .line 5
    iget v1, p1, Landroidx/renderscript/ScriptGroup$Node;->mOrder:I

    .line 6
    .line 7
    if-ge v1, p2, :cond_0

    .line 8
    .line 9
    iput p2, p1, Landroidx/renderscript/ScriptGroup$Node;->mOrder:I

    .line 10
    .line 11
    :cond_0
    iget-object p2, p1, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p2

    .line 16
    move v1, v0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Landroidx/renderscript/ScriptGroup$ConnectLine;

    .line 29
    .line 30
    iget-object v3, v2, Landroidx/renderscript/ScriptGroup$ConnectLine;->mToF:Landroidx/renderscript/Script$FieldID;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    iget-object v2, v3, Landroidx/renderscript/Script$FieldID;->mScript:Landroidx/renderscript/Script;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v2}, Landroidx/renderscript/ScriptGroup$Builder;->findNode(Landroidx/renderscript/Script;)Landroidx/renderscript/ScriptGroup$Node;

    .line 38
    move-result-object v2

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_1
    iget-object v2, v2, Landroidx/renderscript/ScriptGroup$ConnectLine;->mToK:Landroidx/renderscript/Script$KernelID;

    .line 42
    .line 43
    iget-object v2, v2, Landroidx/renderscript/Script$KernelID;->mScript:Landroidx/renderscript/Script;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v2}, Landroidx/renderscript/ScriptGroup$Builder;->findNode(Landroidx/renderscript/Script;)Landroidx/renderscript/ScriptGroup$Node;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    :goto_1
    iget-boolean v3, v2, Landroidx/renderscript/ScriptGroup$Node;->mSeen:Z

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    const/4 p1, 0x0

    .line 53
    return p1

    .line 54
    .line 55
    :cond_2
    iget v3, p1, Landroidx/renderscript/ScriptGroup$Node;->mOrder:I

    .line 56
    add-int/2addr v3, v0

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v2, v3}, Landroidx/renderscript/ScriptGroup$Builder;->calcOrderRecurse(Landroidx/renderscript/ScriptGroup$Node;I)Z

    .line 60
    move-result v2

    .line 61
    and-int/2addr v1, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return v1
.end method

.method private findNode(Landroidx/renderscript/Script$KernelID;)Landroidx/renderscript/ScriptGroup$Node;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/renderscript/ScriptGroup$Node;

    move v3, v0

    .line 6
    :goto_1
    iget-object v4, v2, Landroidx/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    iget-object v4, v2, Landroidx/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private findNode(Landroidx/renderscript/Script;)Landroidx/renderscript/ScriptGroup$Node;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/renderscript/ScriptGroup$Node;

    iget-object v1, v1, Landroidx/renderscript/ScriptGroup$Node;->mScript:Landroidx/renderscript/Script;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/renderscript/ScriptGroup$Node;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private mergeDAGs(II)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroidx/renderscript/ScriptGroup$Node;

    .line 18
    .line 19
    iget v1, v1, Landroidx/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 20
    .line 21
    if-ne v1, p2, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Landroidx/renderscript/ScriptGroup$Node;

    .line 30
    .line 31
    iput p1, v1, Landroidx/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method private validateCycle(Landroidx/renderscript/ScriptGroup$Node;Landroidx/renderscript/ScriptGroup$Node;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p1, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_4

    .line 10
    .line 11
    iget-object v1, p1, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    check-cast v1, Landroidx/renderscript/ScriptGroup$ConnectLine;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/renderscript/ScriptGroup$ConnectLine;->mToK:Landroidx/renderscript/Script$KernelID;

    .line 20
    .line 21
    const-string v3, "Loops in group not allowed."

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, v2, Landroidx/renderscript/Script$KernelID;->mScript:Landroidx/renderscript/Script;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v2}, Landroidx/renderscript/ScriptGroup$Builder;->findNode(Landroidx/renderscript/Script;)Landroidx/renderscript/ScriptGroup$Node;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v2, p2}, Landroidx/renderscript/ScriptGroup$Builder;->validateCycle(Landroidx/renderscript/ScriptGroup$Node;Landroidx/renderscript/ScriptGroup$Node;)V

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_0
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v3}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1

    .line 46
    .line 47
    :cond_1
    :goto_1
    iget-object v1, v1, Landroidx/renderscript/ScriptGroup$ConnectLine;->mToF:Landroidx/renderscript/Script$FieldID;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/renderscript/Script$FieldID;->mScript:Landroidx/renderscript/Script;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v1}, Landroidx/renderscript/ScriptGroup$Builder;->findNode(Landroidx/renderscript/Script;)Landroidx/renderscript/ScriptGroup$Node;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v2

    .line 60
    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v1, p2}, Landroidx/renderscript/ScriptGroup$Builder;->validateCycle(Landroidx/renderscript/ScriptGroup$Node;Landroidx/renderscript/ScriptGroup$Node;)V

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_2
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v3}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1

    .line 72
    .line 73
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    return-void
.end method

.method private validateDAG()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget-object v2, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 9
    .line 10
    if-ge v1, v2, :cond_3

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Landroidx/renderscript/ScriptGroup$Node;

    .line 19
    .line 20
    iget-object v3, v2, Landroidx/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v3

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    iget-object v3, v2, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v3

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    iget-object v3, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x1

    .line 42
    .line 43
    if-gt v3, v4, :cond_0

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_0
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    .line 47
    .line 48
    const-string v1, "Groups cannot contain unconnected scripts"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0

    .line 53
    .line 54
    :cond_1
    :goto_1
    add-int/lit8 v3, v1, 0x1

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v2, v3}, Landroidx/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroidx/renderscript/ScriptGroup$Node;I)V

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    check-cast v1, Landroidx/renderscript/ScriptGroup$Node;

    .line 69
    .line 70
    iget v1, v1, Landroidx/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 71
    .line 72
    :goto_2
    iget-object v2, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v2

    .line 77
    .line 78
    if-ge v0, v2, :cond_5

    .line 79
    .line 80
    iget-object v2, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    check-cast v2, Landroidx/renderscript/ScriptGroup$Node;

    .line 87
    .line 88
    iget v2, v2, Landroidx/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 89
    .line 90
    if-ne v2, v1, :cond_4

    .line 91
    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 93
    goto :goto_2

    .line 94
    .line 95
    :cond_4
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    .line 96
    .line 97
    const-string v1, "Multiple DAGs in group not allowed."

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 101
    throw v0

    .line 102
    :cond_5
    return-void
.end method

.method private validateDAGRecurse(Landroidx/renderscript/ScriptGroup$Node;I)V
    .locals 3

    .line 1
    .line 2
    iget v0, p1, Landroidx/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eq v0, p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p2}, Landroidx/renderscript/ScriptGroup$Builder;->mergeDAGs(II)V

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iput p2, p1, Landroidx/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    iget-object v1, p1, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    .line 21
    if-ge v0, v1, :cond_3

    .line 22
    .line 23
    iget-object v1, p1, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Landroidx/renderscript/ScriptGroup$ConnectLine;

    .line 30
    .line 31
    iget-object v2, v1, Landroidx/renderscript/ScriptGroup$ConnectLine;->mToK:Landroidx/renderscript/Script$KernelID;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v2, v2, Landroidx/renderscript/Script$KernelID;->mScript:Landroidx/renderscript/Script;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v2}, Landroidx/renderscript/ScriptGroup$Builder;->findNode(Landroidx/renderscript/Script;)Landroidx/renderscript/ScriptGroup$Node;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v2, p2}, Landroidx/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroidx/renderscript/ScriptGroup$Node;I)V

    .line 43
    .line 44
    :cond_1
    iget-object v1, v1, Landroidx/renderscript/ScriptGroup$ConnectLine;->mToF:Landroidx/renderscript/Script$FieldID;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/renderscript/Script$FieldID;->mScript:Landroidx/renderscript/Script;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v1}, Landroidx/renderscript/ScriptGroup$Builder;->findNode(Landroidx/renderscript/Script;)Landroidx/renderscript/ScriptGroup$Node;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v1, p2}, Landroidx/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroidx/renderscript/ScriptGroup$Node;I)V

    .line 56
    .line 57
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-void
.end method


# virtual methods
.method public addConnection(Landroidx/renderscript/Type;Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Script$FieldID;)Landroidx/renderscript/ScriptGroup$Builder;
    .locals 5

    .line 1
    invoke-direct {p0, p2}, Landroidx/renderscript/ScriptGroup$Builder;->findNode(Landroidx/renderscript/Script$KernelID;)Landroidx/renderscript/ScriptGroup$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p3, Landroidx/renderscript/Script$FieldID;->mScript:Landroidx/renderscript/Script;

    invoke-direct {p0, v1}, Landroidx/renderscript/ScriptGroup$Builder;->findNode(Landroidx/renderscript/Script;)Landroidx/renderscript/ScriptGroup$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Landroidx/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v2, p1, p2, p3}, Landroidx/renderscript/ScriptGroup$ConnectLine;-><init>(Landroidx/renderscript/Type;Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Script$FieldID;)V

    iget-object v3, p0, Landroidx/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 4
    new-instance v4, Landroidx/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroidx/renderscript/ScriptGroup$ConnectLine;-><init>(Landroidx/renderscript/Type;Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Script$FieldID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, v0, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, v1, Landroidx/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-direct {p0, v0, v0}, Landroidx/renderscript/ScriptGroup$Builder;->validateCycle(Landroidx/renderscript/ScriptGroup$Node;Landroidx/renderscript/ScriptGroup$Node;)V

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    const-string p2, "To script not found."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    const-string p2, "From script not found."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addConnection(Landroidx/renderscript/Type;Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Script$KernelID;)Landroidx/renderscript/ScriptGroup$Builder;
    .locals 5

    .line 10
    invoke-direct {p0, p2}, Landroidx/renderscript/ScriptGroup$Builder;->findNode(Landroidx/renderscript/Script$KernelID;)Landroidx/renderscript/ScriptGroup$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0, p3}, Landroidx/renderscript/ScriptGroup$Builder;->findNode(Landroidx/renderscript/Script$KernelID;)Landroidx/renderscript/ScriptGroup$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    new-instance v2, Landroidx/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v2, p1, p2, p3}, Landroidx/renderscript/ScriptGroup$ConnectLine;-><init>(Landroidx/renderscript/Type;Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Script$KernelID;)V

    iget-object v3, p0, Landroidx/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 13
    new-instance v4, Landroidx/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroidx/renderscript/ScriptGroup$ConnectLine;-><init>(Landroidx/renderscript/Type;Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Script$KernelID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, v0, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, v1, Landroidx/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-direct {p0, v0, v0}, Landroidx/renderscript/ScriptGroup$Builder;->validateCycle(Landroidx/renderscript/ScriptGroup$Node;Landroidx/renderscript/ScriptGroup$Node;)V

    return-object p0

    .line 17
    :cond_0
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    const-string p2, "To script not found."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    const-string p2, "From script not found."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addKernel(Landroidx/renderscript/Script$KernelID;)Landroidx/renderscript/ScriptGroup$Builder;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/renderscript/Script$KernelID;->mScript:Landroidx/renderscript/Script;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/renderscript/Script;->isIncSupp()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iput-boolean v1, p0, Landroidx/renderscript/ScriptGroup$Builder;->mUseIncSupp:Z

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0, p1}, Landroidx/renderscript/ScriptGroup$Builder;->findNode(Landroidx/renderscript/Script$KernelID;)Landroidx/renderscript/ScriptGroup$Node;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    return-object p0

    .line 27
    .line 28
    :cond_1
    iget v0, p0, Landroidx/renderscript/ScriptGroup$Builder;->mKernelCount:I

    .line 29
    add-int/2addr v0, v1

    .line 30
    .line 31
    iput v0, p0, Landroidx/renderscript/ScriptGroup$Builder;->mKernelCount:I

    .line 32
    .line 33
    iget-object v0, p1, Landroidx/renderscript/Script$KernelID;->mScript:Landroidx/renderscript/Script;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Landroidx/renderscript/ScriptGroup$Builder;->findNode(Landroidx/renderscript/Script;)Landroidx/renderscript/ScriptGroup$Node;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    new-instance v0, Landroidx/renderscript/ScriptGroup$Node;

    .line 42
    .line 43
    iget-object v1, p1, Landroidx/renderscript/Script$KernelID;->mScript:Landroidx/renderscript/Script;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Landroidx/renderscript/ScriptGroup$Node;-><init>(Landroidx/renderscript/Script;)V

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    :cond_2
    iget-object v0, v0, Landroidx/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-object p0

    .line 58
    .line 59
    :cond_3
    new-instance p1, Landroidx/renderscript/RSInvalidStateException;

    .line 60
    .line 61
    const-string v0, "Kernels may not be added once connections exist."

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v0}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1
.end method

.method public create()Landroidx/renderscript/ScriptGroup;
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_11

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    .line 12
    :goto_0
    iget-object v2, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v2

    .line 17
    .line 18
    if-ge v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Landroidx/renderscript/ScriptGroup$Node;

    .line 27
    .line 28
    iput v0, v2, Landroidx/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-direct {p0}, Landroidx/renderscript/ScriptGroup$Builder;->validateDAG()V

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    iget v3, p0, Landroidx/renderscript/ScriptGroup$Builder;->mKernelCount:I

    .line 47
    .line 48
    new-array v5, v3, [J

    .line 49
    move v3, v0

    .line 50
    move v4, v3

    .line 51
    .line 52
    :goto_1
    iget-object v6, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v6

    .line 57
    .line 58
    if-ge v3, v6, :cond_8

    .line 59
    .line 60
    iget-object v6, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    check-cast v6, Landroidx/renderscript/ScriptGroup$Node;

    .line 67
    move v7, v0

    .line 68
    .line 69
    :goto_2
    iget-object v8, v6, Landroidx/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result v8

    .line 74
    .line 75
    if-ge v7, v8, :cond_7

    .line 76
    .line 77
    iget-object v8, v6, Landroidx/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v8

    .line 82
    .line 83
    check-cast v8, Landroidx/renderscript/Script$KernelID;

    .line 84
    .line 85
    add-int/lit8 v9, v4, 0x1

    .line 86
    .line 87
    iget-object v10, p0, Landroidx/renderscript/ScriptGroup$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, v10}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 91
    move-result-wide v10

    .line 92
    .line 93
    aput-wide v10, v5, v4

    .line 94
    move v4, v0

    .line 95
    move v10, v4

    .line 96
    .line 97
    :goto_3
    iget-object v11, v6, Landroidx/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 101
    move-result v11

    .line 102
    const/4 v12, 0x1

    .line 103
    .line 104
    if-ge v4, v11, :cond_2

    .line 105
    .line 106
    iget-object v11, v6, Landroidx/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v11

    .line 111
    .line 112
    check-cast v11, Landroidx/renderscript/ScriptGroup$ConnectLine;

    .line 113
    .line 114
    iget-object v11, v11, Landroidx/renderscript/ScriptGroup$ConnectLine;->mToK:Landroidx/renderscript/Script$KernelID;

    .line 115
    .line 116
    if-ne v11, v8, :cond_1

    .line 117
    move v10, v12

    .line 118
    .line 119
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    move v4, v0

    .line 122
    move v11, v4

    .line 123
    .line 124
    :goto_4
    iget-object v13, v6, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 128
    move-result v13

    .line 129
    .line 130
    if-ge v4, v13, :cond_4

    .line 131
    .line 132
    iget-object v13, v6, Landroidx/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    move-result-object v13

    .line 137
    .line 138
    check-cast v13, Landroidx/renderscript/ScriptGroup$ConnectLine;

    .line 139
    .line 140
    iget-object v13, v13, Landroidx/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroidx/renderscript/Script$KernelID;

    .line 141
    .line 142
    if-ne v13, v8, :cond_3

    .line 143
    move v11, v12

    .line 144
    .line 145
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 146
    goto :goto_4

    .line 147
    .line 148
    :cond_4
    if-nez v10, :cond_5

    .line 149
    .line 150
    new-instance v4, Landroidx/renderscript/ScriptGroup$IO;

    .line 151
    .line 152
    .line 153
    invoke-direct {v4, v8}, Landroidx/renderscript/ScriptGroup$IO;-><init>(Landroidx/renderscript/Script$KernelID;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    :cond_5
    if-nez v11, :cond_6

    .line 159
    .line 160
    new-instance v4, Landroidx/renderscript/ScriptGroup$IO;

    .line 161
    .line 162
    .line 163
    invoke-direct {v4, v8}, Landroidx/renderscript/ScriptGroup$IO;-><init>(Landroidx/renderscript/Script$KernelID;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 169
    move v4, v9

    .line 170
    goto :goto_2

    .line 171
    .line 172
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 173
    goto :goto_1

    .line 174
    .line 175
    :cond_8
    iget v3, p0, Landroidx/renderscript/ScriptGroup$Builder;->mKernelCount:I

    .line 176
    .line 177
    if-ne v4, v3, :cond_10

    .line 178
    .line 179
    iget-boolean v3, p0, Landroidx/renderscript/ScriptGroup$Builder;->mUseIncSupp:Z

    .line 180
    .line 181
    const-wide/16 v10, 0x0

    .line 182
    .line 183
    if-nez v3, :cond_d

    .line 184
    .line 185
    iget-object v3, p0, Landroidx/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 189
    move-result v3

    .line 190
    .line 191
    new-array v6, v3, [J

    .line 192
    .line 193
    iget-object v3, p0, Landroidx/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 197
    move-result v3

    .line 198
    .line 199
    new-array v7, v3, [J

    .line 200
    .line 201
    iget-object v3, p0, Landroidx/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 205
    move-result v3

    .line 206
    .line 207
    new-array v8, v3, [J

    .line 208
    .line 209
    iget-object v3, p0, Landroidx/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 213
    move-result v3

    .line 214
    .line 215
    new-array v9, v3, [J

    .line 216
    move v3, v0

    .line 217
    .line 218
    :goto_5
    iget-object v4, p0, Landroidx/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 222
    move-result v4

    .line 223
    .line 224
    if-ge v3, v4, :cond_b

    .line 225
    .line 226
    iget-object v4, p0, Landroidx/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    move-result-object v4

    .line 231
    .line 232
    check-cast v4, Landroidx/renderscript/ScriptGroup$ConnectLine;

    .line 233
    .line 234
    iget-object v12, v4, Landroidx/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroidx/renderscript/Script$KernelID;

    .line 235
    .line 236
    iget-object v13, p0, Landroidx/renderscript/ScriptGroup$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v12, v13}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 240
    move-result-wide v12

    .line 241
    .line 242
    aput-wide v12, v6, v3

    .line 243
    .line 244
    iget-object v12, v4, Landroidx/renderscript/ScriptGroup$ConnectLine;->mToK:Landroidx/renderscript/Script$KernelID;

    .line 245
    .line 246
    if-eqz v12, :cond_9

    .line 247
    .line 248
    iget-object v13, p0, Landroidx/renderscript/ScriptGroup$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v12, v13}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 252
    move-result-wide v12

    .line 253
    .line 254
    aput-wide v12, v7, v3

    .line 255
    .line 256
    :cond_9
    iget-object v12, v4, Landroidx/renderscript/ScriptGroup$ConnectLine;->mToF:Landroidx/renderscript/Script$FieldID;

    .line 257
    .line 258
    if-eqz v12, :cond_a

    .line 259
    .line 260
    iget-object v13, p0, Landroidx/renderscript/ScriptGroup$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v12, v13}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 264
    move-result-wide v12

    .line 265
    .line 266
    aput-wide v12, v8, v3

    .line 267
    .line 268
    :cond_a
    iget-object v4, v4, Landroidx/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroidx/renderscript/Type;

    .line 269
    .line 270
    iget-object v12, p0, Landroidx/renderscript/ScriptGroup$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4, v12}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 274
    move-result-wide v12

    .line 275
    .line 276
    aput-wide v12, v9, v3

    .line 277
    .line 278
    add-int/lit8 v3, v3, 0x1

    .line 279
    goto :goto_5

    .line 280
    .line 281
    :cond_b
    iget-object v4, p0, Landroidx/renderscript/ScriptGroup$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 282
    .line 283
    .line 284
    invoke-virtual/range {v4 .. v9}, Landroidx/renderscript/RenderScript;->nScriptGroupCreate([J[J[J[J[J)J

    .line 285
    move-result-wide v3

    .line 286
    .line 287
    cmp-long v5, v3, v10

    .line 288
    .line 289
    if-eqz v5, :cond_c

    .line 290
    move-wide v10, v3

    .line 291
    goto :goto_6

    .line 292
    .line 293
    :cond_c
    new-instance v0, Landroidx/renderscript/RSRuntimeException;

    .line 294
    .line 295
    const-string v1, "Object creation error, should not happen."

    .line 296
    .line 297
    .line 298
    invoke-direct {v0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 299
    throw v0

    .line 300
    .line 301
    .line 302
    :cond_d
    invoke-direct {p0}, Landroidx/renderscript/ScriptGroup$Builder;->calcOrder()Z

    .line 303
    .line 304
    :goto_6
    new-instance v3, Landroidx/renderscript/ScriptGroup;

    .line 305
    .line 306
    iget-object v4, p0, Landroidx/renderscript/ScriptGroup$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 307
    .line 308
    .line 309
    invoke-direct {v3, v10, v11, v4}, Landroidx/renderscript/ScriptGroup;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 313
    move-result v4

    .line 314
    .line 315
    new-array v4, v4, [Landroidx/renderscript/ScriptGroup$IO;

    .line 316
    .line 317
    iput-object v4, v3, Landroidx/renderscript/ScriptGroup;->mOutputs:[Landroidx/renderscript/ScriptGroup$IO;

    .line 318
    move v4, v0

    .line 319
    .line 320
    .line 321
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 322
    move-result v5

    .line 323
    .line 324
    if-ge v4, v5, :cond_e

    .line 325
    .line 326
    iget-object v5, v3, Landroidx/renderscript/ScriptGroup;->mOutputs:[Landroidx/renderscript/ScriptGroup$IO;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 330
    move-result-object v6

    .line 331
    .line 332
    check-cast v6, Landroidx/renderscript/ScriptGroup$IO;

    .line 333
    .line 334
    aput-object v6, v5, v4

    .line 335
    .line 336
    add-int/lit8 v4, v4, 0x1

    .line 337
    goto :goto_7

    .line 338
    .line 339
    .line 340
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 341
    move-result v2

    .line 342
    .line 343
    new-array v2, v2, [Landroidx/renderscript/ScriptGroup$IO;

    .line 344
    .line 345
    iput-object v2, v3, Landroidx/renderscript/ScriptGroup;->mInputs:[Landroidx/renderscript/ScriptGroup$IO;

    .line 346
    .line 347
    .line 348
    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 349
    move-result v2

    .line 350
    .line 351
    if-ge v0, v2, :cond_f

    .line 352
    .line 353
    iget-object v2, v3, Landroidx/renderscript/ScriptGroup;->mInputs:[Landroidx/renderscript/ScriptGroup$IO;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 357
    move-result-object v4

    .line 358
    .line 359
    check-cast v4, Landroidx/renderscript/ScriptGroup$IO;

    .line 360
    .line 361
    aput-object v4, v2, v0

    .line 362
    .line 363
    add-int/lit8 v0, v0, 0x1

    .line 364
    goto :goto_8

    .line 365
    .line 366
    :cond_f
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 367
    .line 368
    .line 369
    invoke-static {v3, v0}, Landroidx/renderscript/ScriptGroup;->access$002(Landroidx/renderscript/ScriptGroup;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 370
    .line 371
    iget-boolean v0, p0, Landroidx/renderscript/ScriptGroup$Builder;->mUseIncSupp:Z

    .line 372
    .line 373
    .line 374
    invoke-static {v3, v0}, Landroidx/renderscript/ScriptGroup;->access$102(Landroidx/renderscript/ScriptGroup;Z)Z

    .line 375
    return-object v3

    .line 376
    .line 377
    :cond_10
    new-instance v0, Landroidx/renderscript/RSRuntimeException;

    .line 378
    .line 379
    const-string v1, "Count mismatch, should not happen."

    .line 380
    .line 381
    .line 382
    invoke-direct {v0, v1}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 383
    throw v0

    .line 384
    .line 385
    :cond_11
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    .line 386
    .line 387
    const-string v1, "Empty script groups are not allowed"

    .line 388
    .line 389
    .line 390
    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 391
    throw v0
.end method
