

/**************************************************************************************************
 *** This file was autogenerated from GrSectionTest.fp; do not modify.
 **************************************************************************************************/
#include "GrSectionTest.h"

#include "src/core/SkUtils.h"
#include "src/gpu/GrTexture.h"
#include "src/gpu/glsl/GrGLSLFragmentProcessor.h"
#include "src/gpu/glsl/GrGLSLFragmentShaderBuilder.h"
#include "src/gpu/glsl/GrGLSLProgramBuilder.h"
#include "src/sksl/SkSLCPP.h"
#include "src/sksl/SkSLUtil.h"
class GrGLSLSectionTest : public GrGLSLFragmentProcessor {
public:
    GrGLSLSectionTest() {}
    void emitCode(EmitArgs& args) override {
        GrGLSLFPFragmentBuilder* fragBuilder = args.fFragBuilder;
        const GrSectionTest& _outer = args.fFp.cast<GrSectionTest>();
        (void) _outer;
        fragBuilder->codeAppendf(
R"SkSL(return half4(1.0);
)SkSL"
);
    }
private:
    void onSetData(const GrGLSLProgramDataManager& pdman, const GrFragmentProcessor& _proc) override {
    }
};
std::unique_ptr<GrGLSLFragmentProcessor> GrSectionTest::onMakeProgramImpl() const {
    return std::make_unique<GrGLSLSectionTest>();
}
void GrSectionTest::onGetGLSLProcessorKey(const GrShaderCaps& caps, GrProcessorKeyBuilder* b) const {
}
bool GrSectionTest::onIsEqual(const GrFragmentProcessor& other) const {
    const GrSectionTest& that = other.cast<GrSectionTest>();
    (void) that;
    return true;
}
GrSectionTest::GrSectionTest(const GrSectionTest& src)
: INHERITED(kGrSectionTest_ClassID, src.optimizationFlags()) {
        this->cloneAndRegisterAllChildProcessors(src);
}
std::unique_ptr<GrFragmentProcessor> GrSectionTest::clone() const {
    return std::make_unique<GrSectionTest>(*this);
}
#if GR_TEST_UTILS
SkString GrSectionTest::onDumpInfo() const {
    return SkString();
}
#endif
GR_DEFINE_FRAGMENT_PROCESSOR_TEST(GrSectionTest);
#if GR_TEST_UTILS
std::unique_ptr<GrFragmentProcessor> GrSectionTest::TestCreate(GrProcessorTestData* testDataName) {
testDataName section}
#endif
