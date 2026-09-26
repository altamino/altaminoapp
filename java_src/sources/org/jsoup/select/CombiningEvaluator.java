package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Element;

/* JADX INFO: loaded from: classes.dex */
abstract class CombiningEvaluator extends Evaluator {
    final ArrayList<Evaluator> evaluators;
    int num;

    static final class And extends CombiningEvaluator {
        And(Collection<Evaluator> collection) {
            super(collection);
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i10 = 0; i10 < this.num; i10++) {
                if (!this.evaluators.get(i10).matches(element, element2)) {
                    return false;
                }
            }
            return true;
        }

        And(Evaluator... evaluatorArr) {
            this(Arrays.asList(evaluatorArr));
        }

        public String toString() {
            return StringUtil.join(this.evaluators, " ");
        }
    }

    static final class Or extends CombiningEvaluator {
        Or(Collection<Evaluator> collection) {
            if (this.num > 1) {
                this.evaluators.add(new And(collection));
            } else {
                this.evaluators.addAll(collection);
            }
            updateNumEvaluators();
        }

        @Override // org.jsoup.select.Evaluator
        public boolean matches(Element element, Element element2) {
            for (int i10 = 0; i10 < this.num; i10++) {
                if (this.evaluators.get(i10).matches(element, element2)) {
                    return true;
                }
            }
            return false;
        }

        public void add(Evaluator evaluator) {
            this.evaluators.add(evaluator);
            updateNumEvaluators();
        }

        public String toString() {
            return StringUtil.join(this.evaluators, ", ");
        }

        Or(Evaluator... evaluatorArr) {
            this(Arrays.asList(evaluatorArr));
        }

        Or() {
        }
    }

    CombiningEvaluator() {
        this.num = 0;
        this.evaluators = new ArrayList<>();
    }

    void replaceRightMostEvaluator(Evaluator evaluator) {
        this.evaluators.set(this.num - 1, evaluator);
    }

    Evaluator rightMostEvaluator() {
        int i10 = this.num;
        if (i10 > 0) {
            return this.evaluators.get(i10 - 1);
        }
        return null;
    }

    void updateNumEvaluators() {
        this.num = this.evaluators.size();
    }

    CombiningEvaluator(Collection<Evaluator> collection) {
        this();
        this.evaluators.addAll(collection);
        updateNumEvaluators();
    }
}
