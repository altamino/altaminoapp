.class public Landroidx/renderscript/Script;
.super Landroidx/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/Script$LaunchOptions;,
        Landroidx/renderscript/Script$FieldBase;,
        Landroidx/renderscript/Script$Builder;,
        Landroidx/renderscript/Script$FieldID;,
        Landroidx/renderscript/Script$InvokeID;,
        Landroidx/renderscript/Script$KernelID;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mIIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/renderscript/Script$InvokeID;",
            ">;"
        }
    .end annotation
.end field

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field

.field private mUseIncSupp:Z


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 4
    .line 5
    new-instance p1, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance p1, Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    .line 18
    .line 19
    new-instance p1, Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    iput-boolean p1, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    .line 28
    return-void
.end method


# virtual methods
.method public bindAllocation(Landroidx/renderscript/Allocation;I)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/renderscript/RenderScript;->validate()V

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 17
    move-result-wide v4

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 23
    move-result-wide v6

    .line 24
    .line 25
    iget-boolean v9, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    .line 26
    .line 27
    move/from16 v8, p2

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {v3 .. v9}, Landroidx/renderscript/RenderScript;->nScriptBindAllocation(JJIZ)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object v10, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v10}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 37
    move-result-wide v11

    .line 38
    .line 39
    const-wide/16 v13, 0x0

    .line 40
    .line 41
    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    .line 42
    .line 43
    move/from16 v15, p2

    .line 44
    .line 45
    move/from16 v16, v1

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v10 .. v16}, Landroidx/renderscript/RenderScript;->nScriptBindAllocation(JJIZ)V

    .line 49
    :goto_0
    return-void
.end method

.method protected createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;
    .locals 9

    .line 1
    .line 2
    iget-object p2, p0, Landroidx/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Landroidx/renderscript/Script$FieldID;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    return-object p2

    .line 12
    .line 13
    :cond_0
    iget-object p2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    iget-boolean v2, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0, v1, p1, v2}, Landroidx/renderscript/RenderScript;->nScriptFieldIDCreate(JIZ)J

    .line 23
    move-result-wide v4

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    cmp-long p2, v4, v0

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    new-instance p2, Landroidx/renderscript/Script$FieldID;

    .line 32
    .line 33
    iget-object v6, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 34
    move-object v3, p2

    .line 35
    move-object v7, p0

    .line 36
    move v8, p1

    .line 37
    .line 38
    .line 39
    invoke-direct/range {v3 .. v8}, Landroidx/renderscript/Script$FieldID;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Script;I)V

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    return-object p2

    .line 46
    .line 47
    :cond_1
    new-instance p1, Landroidx/renderscript/RSDriverException;

    .line 48
    .line 49
    const-string p2, "Failed to create FieldID"

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Landroidx/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1
.end method

.method protected createInvokeID(I)Landroidx/renderscript/Script$InvokeID;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/renderscript/Script$InvokeID;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, p1}, Landroidx/renderscript/RenderScript;->nScriptInvokeIDCreate(JI)J

    .line 21
    move-result-wide v4

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    cmp-long v0, v4, v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Landroidx/renderscript/Script$InvokeID;

    .line 30
    .line 31
    iget-object v6, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 32
    move-object v3, v0

    .line 33
    move-object v7, p0

    .line 34
    move v8, p1

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v3 .. v8}, Landroidx/renderscript/Script$InvokeID;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Script;I)V

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    return-object v0

    .line 44
    .line 45
    :cond_1
    new-instance p1, Landroidx/renderscript/RSDriverException;

    .line 46
    .line 47
    const-string v0, "Failed to create KernelID"

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v0}, Landroidx/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1
.end method

.method protected createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/renderscript/Script$KernelID;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    iget-boolean v5, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    .line 20
    move v3, p1

    .line 21
    move v4, p2

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nScriptKernelIDCreate(JIIZ)J

    .line 25
    move-result-wide v1

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    cmp-long v0, v1, v3

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v7, Landroidx/renderscript/Script$KernelID;

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 36
    move-object v0, v7

    .line 37
    move-object v4, p0

    .line 38
    move v5, p1

    .line 39
    move v6, p2

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v0 .. v6}, Landroidx/renderscript/Script$KernelID;-><init>(JLandroidx/renderscript/RenderScript;Landroidx/renderscript/Script;II)V

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    return-object v7

    .line 49
    .line 50
    :cond_1
    new-instance v0, Landroidx/renderscript/RSDriverException;

    .line 51
    .line 52
    const-string v1, "Failed to create KernelID"

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Landroidx/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0
.end method

.method protected forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v2, "At least one of ain or aout is required to be non-null."

    invoke-direct {v1, v2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 2
    invoke-virtual {v1, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    move-wide v11, v5

    goto :goto_1

    :cond_2
    move-wide v11, v3

    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 3
    invoke-virtual {v2, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    :cond_3
    move-wide v13, v3

    if-eqz p4, :cond_4

    .line 4
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    :goto_2
    move-object/from16 v23, v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    iget-boolean v3, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    if-eqz v3, :cond_5

    .line 5
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v19

    .line 6
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v21

    iget-object v15, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 7
    invoke-virtual {v0, v15}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v16

    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v18, p1

    move/from16 v24, v1

    invoke-virtual/range {v15 .. v24}, Landroidx/renderscript/RenderScript;->nScriptForEach(JIJJ[BZ)V

    goto :goto_4

    :cond_5
    iget-object v7, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 8
    invoke-virtual {v0, v7}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v10, p1

    move-object/from16 v15, v23

    move/from16 v16, v1

    invoke-virtual/range {v7 .. v16}, Landroidx/renderscript/RenderScript;->nScriptForEach(JIJJ[BZ)V

    :goto_4
    return-void
.end method

.method protected forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v2, "At least one of ain or aout is required to be non-null."

    invoke-direct {v1, v2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-nez p5, :cond_2

    .line 10
    invoke-virtual/range {p0 .. p4}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void

    :cond_2
    const-wide/16 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v5, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    invoke-virtual {v1, v5}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v5

    move-wide v11, v5

    goto :goto_1

    :cond_3
    move-wide v11, v3

    :goto_1
    if-eqz v2, :cond_4

    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 12
    invoke-virtual {v2, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    :cond_4
    move-wide v13, v3

    if-eqz p4, :cond_5

    .line 13
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    :goto_2
    move-object/from16 v23, v3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    iget-boolean v3, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    if-eqz v3, :cond_6

    .line 14
    invoke-virtual {v0, v1}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v19

    .line 15
    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v21

    iget-object v15, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 16
    invoke-virtual {v0, v15}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v16

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$000(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v24

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$100(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v25

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$200(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v26

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$300(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v27

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$400(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v28

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$500(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v29

    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v18, p1

    move/from16 v30, v1

    invoke-virtual/range {v15 .. v30}, Landroidx/renderscript/RenderScript;->nScriptForEachClipped(JIJJ[BIIIIIIZ)V

    goto :goto_4

    :cond_6
    iget-object v7, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 17
    invoke-virtual {v0, v7}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$000(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v16

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$100(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v17

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$200(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v18

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$300(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v19

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$400(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v20

    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$500(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v21

    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v10, p1

    move-object/from16 v15, v23

    move/from16 v22, v1

    invoke-virtual/range {v7 .. v22}, Landroidx/renderscript/RenderScript;->nScriptForEachClipped(JIJJ[BIIIIIIZ)V

    :goto_4
    return-void
.end method

.method protected forEach(I[Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 18
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/Script;->forEach(I[Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method protected forEach(I[Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 19
    invoke-virtual {v3}, Landroidx/renderscript/RenderScript;->validate()V

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 20
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    iget-object v7, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 21
    invoke-virtual {v7, v6}, Landroidx/renderscript/RenderScript;->validateObject(Landroidx/renderscript/BaseObj;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 22
    invoke-virtual {v4, v2}, Landroidx/renderscript/RenderScript;->validateObject(Landroidx/renderscript/BaseObj;)V

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    new-instance v1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v2, "At least one of ain or aout is required to be non-null."

    invoke-direct {v1, v2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 24
    array-length v5, v1

    new-array v5, v5, [J

    move v6, v3

    .line 25
    :goto_2
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 26
    aget-object v7, v1, v6

    iget-object v8, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move-object v11, v5

    goto :goto_3

    :cond_4
    move-object v11, v4

    :goto_3
    if-eqz v2, :cond_5

    iget-object v1, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 27
    invoke-virtual {v2, v1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    :goto_4
    move-wide v12, v1

    goto :goto_5

    :cond_5
    const-wide/16 v1, 0x0

    goto :goto_4

    :goto_5
    if-eqz p4, :cond_6

    .line 28
    invoke-virtual/range {p4 .. p4}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    move-object v14, v1

    goto :goto_6

    :cond_6
    move-object v14, v4

    :goto_6
    if-eqz p5, :cond_7

    const/4 v1, 0x6

    new-array v4, v1, [I

    .line 29
    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$000(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v1

    aput v1, v4, v3

    .line 30
    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$100(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v4, v2

    const/4 v1, 0x2

    .line 31
    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$200(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x3

    .line 32
    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$300(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x4

    .line 33
    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$400(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x5

    .line 34
    invoke-static/range {p5 .. p5}, Landroidx/renderscript/Script$LaunchOptions;->access$500(Landroidx/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    :cond_7
    move-object v15, v4

    iget-object v7, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 35
    invoke-virtual {v0, v7}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    move/from16 v10, p1

    invoke-virtual/range {v7 .. v15}, Landroidx/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    return-void
.end method

.method getDummyAlloc(Landroidx/renderscript/Allocation;)J
    .locals 10

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroidx/renderscript/Element;->getDummyElement(Landroidx/renderscript/RenderScript;)J

    .line 16
    move-result-wide v1

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3, v1, v2}, Landroidx/renderscript/Type;->getDummyType(Landroidx/renderscript/RenderScript;J)J

    .line 22
    move-result-wide v7

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getX()I

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/renderscript/Type;->getElement()Landroidx/renderscript/Element;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/renderscript/Element;->getBytesSize()I

    .line 34
    move-result v0

    .line 35
    .line 36
    mul-int v9, v1, v0

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 42
    move-result-wide v5

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {v4 .. v9}, Landroidx/renderscript/RenderScript;->nIncAllocationCreateTyped(JJI)J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Landroidx/renderscript/Allocation;->setIncAllocID(J)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    const-wide/16 v0, 0x0

    .line 53
    :goto_0
    return-wide v0
.end method

.method protected invoke(I)V
    .locals 4

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v3, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Landroidx/renderscript/RenderScript;->nScriptInvoke(JIZ)V

    return-void
.end method

.method protected invoke(ILandroidx/renderscript/FieldPacker;)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 2
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    iget-boolean v5, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nScriptInvokeV(JI[BZ)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 3
    invoke-virtual {p0, p2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v0

    iget-boolean v2, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    invoke-virtual {p2, v0, v1, p1, v2}, Landroidx/renderscript/RenderScript;->nScriptInvoke(JIZ)V

    :goto_0
    return-void
.end method

.method protected isIncSupp()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    return v0
.end method

.method protected reduce(I[Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    if-eqz p2, :cond_4

    .line 8
    array-length v0, p2

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-lt v0, v1, :cond_4

    .line 12
    .line 13
    if-eqz p3, :cond_3

    .line 14
    array-length v0, p2

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    .line 18
    :goto_0
    if-ge v3, v0, :cond_0

    .line 19
    .line 20
    aget-object v4, p2, v3

    .line 21
    .line 22
    iget-object v5, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, v4}, Landroidx/renderscript/RenderScript;->validateObject(Landroidx/renderscript/BaseObj;)V

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    array-length v0, p2

    .line 30
    .line 31
    new-array v7, v0, [J

    .line 32
    move v0, v2

    .line 33
    :goto_1
    array-length v3, p2

    .line 34
    .line 35
    if-ge v0, v3, :cond_1

    .line 36
    .line 37
    aget-object v3, p2, v0

    .line 38
    .line 39
    iget-object v4, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 43
    move-result-wide v3

    .line 44
    .line 45
    aput-wide v3, v7, v0

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    iget-object p2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 54
    move-result-wide v8

    .line 55
    .line 56
    if-eqz p4, :cond_2

    .line 57
    const/4 p2, 0x6

    .line 58
    .line 59
    new-array p2, p2, [I

    .line 60
    .line 61
    .line 62
    invoke-static {p4}, Landroidx/renderscript/Script$LaunchOptions;->access$000(Landroidx/renderscript/Script$LaunchOptions;)I

    .line 63
    move-result p3

    .line 64
    .line 65
    aput p3, p2, v2

    .line 66
    .line 67
    .line 68
    invoke-static {p4}, Landroidx/renderscript/Script$LaunchOptions;->access$100(Landroidx/renderscript/Script$LaunchOptions;)I

    .line 69
    move-result p3

    .line 70
    .line 71
    aput p3, p2, v1

    .line 72
    const/4 p3, 0x2

    .line 73
    .line 74
    .line 75
    invoke-static {p4}, Landroidx/renderscript/Script$LaunchOptions;->access$200(Landroidx/renderscript/Script$LaunchOptions;)I

    .line 76
    move-result v0

    .line 77
    .line 78
    aput v0, p2, p3

    .line 79
    const/4 p3, 0x3

    .line 80
    .line 81
    .line 82
    invoke-static {p4}, Landroidx/renderscript/Script$LaunchOptions;->access$300(Landroidx/renderscript/Script$LaunchOptions;)I

    .line 83
    move-result v0

    .line 84
    .line 85
    aput v0, p2, p3

    .line 86
    const/4 p3, 0x4

    .line 87
    .line 88
    .line 89
    invoke-static {p4}, Landroidx/renderscript/Script$LaunchOptions;->access$400(Landroidx/renderscript/Script$LaunchOptions;)I

    .line 90
    move-result v0

    .line 91
    .line 92
    aput v0, p2, p3

    .line 93
    const/4 p3, 0x5

    .line 94
    .line 95
    .line 96
    invoke-static {p4}, Landroidx/renderscript/Script$LaunchOptions;->access$500(Landroidx/renderscript/Script$LaunchOptions;)I

    .line 97
    move-result p4

    .line 98
    .line 99
    aput p4, p2, p3

    .line 100
    :goto_2
    move-object v10, p2

    .line 101
    goto :goto_3

    .line 102
    :cond_2
    const/4 p2, 0x0

    .line 103
    goto :goto_2

    .line 104
    .line 105
    :goto_3
    iget-object v3, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 109
    move-result-wide v4

    .line 110
    move v6, p1

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {v3 .. v10}, Landroidx/renderscript/RenderScript;->nScriptReduce(JI[JJ[I)V

    .line 114
    return-void

    .line 115
    .line 116
    :cond_3
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 117
    .line 118
    const-string p2, "aout is required to be non-null."

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    throw p1

    .line 123
    .line 124
    :cond_4
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 125
    .line 126
    const-string p2, "At least one input is required."

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    throw p1
.end method

.method protected setIncSupp(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->validate()V

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 11
    move-result-wide v1

    .line 12
    .line 13
    const-string v3, "UTF-8"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-boolean v3, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, p1, v3}, Landroidx/renderscript/RenderScript;->nScriptSetTimeZone(J[BZ)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    throw v0
.end method

.method public setVar(ID)V
    .locals 7

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 2
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v6, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->nScriptSetVarD(JIDZ)V

    return-void
.end method

.method public setVar(IF)V
    .locals 6

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 1
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v5, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nScriptSetVarF(JIFZ)V

    return-void
.end method

.method public setVar(II)V
    .locals 6

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v5, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nScriptSetVarI(JIIZ)V

    return-void
.end method

.method public setVar(IJ)V
    .locals 7

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 4
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v6, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->nScriptSetVarJ(JIJZ)V

    return-void
.end method

.method public setVar(ILandroidx/renderscript/BaseObj;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    move-object v2, v1

    check-cast v2, Landroidx/renderscript/Allocation;

    invoke-virtual {v0, v2}, Landroidx/renderscript/Script;->getDummyAlloc(Landroidx/renderscript/Allocation;)J

    move-result-wide v5

    iget-object v7, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 7
    invoke-virtual {v0, v7}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    if-nez v1, :cond_0

    move-wide v11, v3

    goto :goto_0

    :cond_0
    move-wide v11, v5

    :goto_0
    iget-boolean v13, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v10, p1

    invoke-virtual/range {v7 .. v13}, Landroidx/renderscript/RenderScript;->nScriptSetVarObj(JIJZ)V

    goto :goto_3

    :cond_1
    iget-object v14, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 8
    invoke-virtual {v0, v14}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v15

    if-nez v1, :cond_2

    :goto_1
    move-wide/from16 v18, v3

    goto :goto_2

    :cond_2
    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v3

    goto :goto_1

    :goto_2
    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v17, p1

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroidx/renderscript/RenderScript;->nScriptSetVarObj(JIJZ)V

    :goto_3
    return-void
.end method

.method public setVar(ILandroidx/renderscript/FieldPacker;)V
    .locals 6

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 9
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    iget-boolean v5, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nScriptSetVarV(JI[BZ)V

    return-void
.end method

.method public setVar(ILandroidx/renderscript/FieldPacker;Landroidx/renderscript/Element;[I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-boolean v2, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 10
    invoke-virtual {v1, v2}, Landroidx/renderscript/Element;->getDummyElement(Landroidx/renderscript/RenderScript;)J

    move-result-wide v8

    iget-object v3, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 11
    invoke-virtual {v0, v3}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v7

    iget-boolean v11, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v6, p1

    move-object/from16 v10, p4

    invoke-virtual/range {v3 .. v11}, Landroidx/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[IZ)V

    goto :goto_0

    :cond_0
    iget-object v12, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 12
    invoke-virtual {v0, v12}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v16

    iget-object v2, v0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v17

    iget-boolean v1, v0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move/from16 v15, p1

    move-object/from16 v19, p4

    move/from16 v20, v1

    invoke-virtual/range {v12 .. v20}, Landroidx/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[IZ)V

    :goto_0
    return-void
.end method

.method public setVar(IZ)V
    .locals 6

    iget-object v0, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 5
    invoke-virtual {p0, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v5, p0, Landroidx/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/RenderScript;->nScriptSetVarI(JIIZ)V

    return-void
.end method
